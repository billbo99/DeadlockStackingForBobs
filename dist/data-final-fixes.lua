if not settings.startup["deadlock-enable-beltboxes"] or not settings.startup["deadlock-enable-beltboxes"].value then
    return
end

local rusty_locale = require "__rusty-locale__.locale"
local rusty_icons = require "__rusty-locale__.icons"
local rusty_recipes = require "__rusty-locale__.recipes"
local rusty_prototypes = require "__rusty-locale__.prototypes"

local Items = require("migrations.items").items
local default_beltbox = "basic-transport-belt-beltbox"
local tech_by_product = {}

local function starts_with(str, start)
    return str:sub(1, #start) == start
end

local function dedup_list(data)
    local tmp = {}
    local res = {}
    for k, v in pairs(data) do
        tmp[v] = true
    end
    for k, _ in pairs(tmp) do
        table.insert(res, k)
    end
    return res
end

local function walk_technology()
    for _, tech in pairs(data.raw.technology) do
        if tech.effects then
            for _, effect in pairs(tech.effects) do
                if effect.type and effect.type == "unlock-recipe" and effect.recipe and data.raw.recipe[effect.recipe] then
                    local main_product = rusty_recipes.get_main_product(data.raw.recipe[effect.recipe])
                    if main_product then
                        if not tech_by_product[main_product.name] then
                            tech_by_product[main_product.name] = {type = main_product.type, tech = {}}
                        end
                        if tech.name == default_beltbox or starts_with(tech.name, "deadlock-stacking-") then
                            -- skipping beltbox technology
                        else
                            table.insert(tech_by_product[main_product.name].tech, tech.name)
                        end
                    end
                end
            end
        end
    end
end

local function walk_recipes()
    for _, recipe in pairs(data.raw.recipe) do
        local main_product = rusty_recipes.get_main_product(recipe)
        if main_product then
            if not tech_by_product[main_product.name] then
                tech_by_product[main_product.name] = {type = main_product.type, tech = {}}
                table.insert(tech_by_product[main_product.name].tech, default_beltbox)
            end
        else
            log("hmm1 .. " .. recipe.name)
        end
    end
    for _, resource in pairs(data.raw.resource) do
        if resource.minable then
            if resource.minable.result then
                if not tech_by_product[resource.minable.result] then
                    tech_by_product[resource.minable.result] = {type = resource.minable.result.type or "item", tech = {}}
                end
                table.insert(tech_by_product[resource.minable.result].tech, default_beltbox)
            elseif resource.minable.results then
                for _, result in pairs(resource.minable.results) do
                    if result.type == "item" then
                        if not tech_by_product[result.name] then
                            tech_by_product[result.name] = {type = result.type, tech = {}}
                            table.insert(tech_by_product[result.name].tech, default_beltbox)
                        end
                    end
                end
            else
                log("hmm2 .. " .. recipe.name)
            end
        end
    end
    for name, _ in pairs(tech_by_product) do
        if #tech_by_product[name].tech == 0 then
            table.insert(tech_by_product[name].tech, default_beltbox)
        end
    end
end

local function add_item_to_tech(name, tech)
    local recipes = {}
    for _, effect in pairs(data.raw.technology[tech].effects) do
        if effect.type == "unlock-recipe" then
            recipes[effect.recipe] = true
        end
    end
    if not recipes[string.format("deadlock-stacks-stack-%s", name)] then
        table.insert(data.raw.technology[tech].effects, {type = "unlock-recipe", recipe = string.format("deadlock-stacks-stack-%s", name)})
    end
    if not recipes[string.format("deadlock-stacks-unstack-%s", name)] then
        table.insert(data.raw.technology[tech].effects, {type = "unlock-recipe", recipe = string.format("deadlock-stacks-unstack-%s", name)})
    end
end

local function main()
    --Add stacking recipes
    for name, item in pairs(Items) do
        local icon = item.icon or nil
        local icon_size = item.icon_size or nil
        local techs = {}
        local item_type = "item"

        if item.tech == "DEFAULT" then
            item.tech = default_beltbox
        end

        if tech_by_product[name] then
            techs = dedup_list(tech_by_product[name].tech)
            item_type = tech_by_product[name].type or "item"
            if item.force_tech then
                table.insert(techs, item.tech)
            end
        else
            techs = {item.tech}
        end

        if item.type then
            item_type = item.type
        end

        if data.raw[item_type] and data.raw[item_type][name] and data.raw.technology[techs[1]] then
            -- if item.restack then
            --     deadlock.destroy_stack(name)
            -- end

            if data.raw.item["deadlock-stack-" .. name] then
                add_item_to_tech(name, techs[1])
            else
                deadlock.add_stack(name, icon, techs[1], icon_size, item_type)
            end
            if #techs > 1 then
                for i = 2, #techs do
                    add_item_to_tech(name, techs[i])
                end
            end
        else
            log("not found ... data.raw[" .. item_type .. "][" .. name .. "]")
        end
    end
    -- deadlock.deferred_stacked_item_updates()
end

if not data.raw.recipe[default_beltbox] then
    default_beltbox = "deadlock-stacking-1"
end

walk_technology()
walk_recipes()
main()

-- multiply a number with a unit (kJ, kW etc) at the end
local function multiply_number_unit(property, mult)
    local value, unit
    value = string.match(property, "%d+")
    if string.match(property, "%d+%.%d+") then -- catch floats
        value = string.match(property, "%d+%.%d+")
    end
    unit = string.match(property, "%a+")
    if unit == nil then
        return value * mult
    else
        return ((value * mult) .. unit)
    end
end

-- fix any fuel values
local deadlock_stack_size = settings.startup["deadlock-stack-size"].value
for item, item_table in pairs(data.raw.item) do
    if starts_with(item, "deadlock-stack-") then
        log(serpent.block(recipe_table))
        local parent = data.raw.item[string.sub(item, 16)]
        if parent and parent.fuel_value then
            item_table.fuel_value = multiply_number_unit(parent.fuel_value, deadlock_stack_size)
            item_table.fuel_category = parent.fuel_category
            item_table.fuel_acceleration_multiplier = parent.fuel_acceleration_multiplier
            item_table.fuel_top_speed_multiplier = parent.fuel_top_speed_multiplier
            item_table.fuel_emissions_multiplier = parent.fuel_emissions_multiplier

            if parent.burnt_result and data.raw.item["deadlock-stack-" .. parent.burnt_result] then
                item_table.burnt_result = "deadlock-stack-" .. parent.burnt_result
            end
        end
    end
end

for recipe, recipe_table in pairs(data.raw.recipe) do
    if starts_with(recipe, "deadlock-stacks-stack-") or starts_with(recipe, "deadlock-stacks-unstack-") then
        if recipe_table.icons then
            local parent, last_icon
            if starts_with(recipe, "deadlock-stacks-stack-") then
                local x = rusty_prototypes.find_by_name(string.sub(recipe_table.result, 16))
                parent = x.item or x.module or x.tool or nil
                last_icon = {icon = "__deadlock-beltboxes-loaders__/graphics/icons/square/arrow-u-64.png", icon_size = 64, scale = 0.25}
            else
                local x = rusty_prototypes.find_by_name(recipe_table.result)
                parent = x.item or x.module or x.tool or nil
                last_icon = {icon = "__deadlock-beltboxes-loaders__/graphics/icons/square/arrow-d-64.png", icon_size = 64, scale = 0.25}
            end
            if parent and parent.icon then
                if string.find(parent.icon, "__bob") then
                    if not string.find(recipe_table.icons[1].icon, "blank.png") then
                        local icons = {{icon = "__deadlock-beltboxes-loaders__/graphics/icons/square/blank.png", icon_size = 32, scale = 1}}
                        table.insert(icons, {icon = parent.icon, icon_size = parent.icon_size, scale = 0.85 / (parent.icon_size / 32), shift = {0, 3}})
                        table.insert(icons, {icon = parent.icon, icon_size = parent.icon_size, scale = 0.85 / (parent.icon_size / 32), shift = {0, 0}})
                        table.insert(icons, {icon = parent.icon, icon_size = parent.icon_size, scale = 0.85 / (parent.icon_size / 32), shift = {0, -3}})
                        table.insert(icons, last_icon)
                        recipe_table.icons = icons

                        if starts_with(recipe, "deadlock-stacks-stack-") then
                            local stacked_icon = data.raw.item[recipe_table.result]
                            icons = {{icon = "__deadlock-beltboxes-loaders__/graphics/icons/square/blank.png", icon_size = 32, scale = 1}}
                            table.insert(icons, {icon = parent.icon, icon_size = parent.icon_size, scale = 0.85 / (parent.icon_size / 32), shift = {0, 3}})
                            table.insert(icons, {icon = parent.icon, icon_size = parent.icon_size, scale = 0.85 / (parent.icon_size / 32), shift = {0, 0}})
                            table.insert(icons, {icon = parent.icon, icon_size = parent.icon_size, scale = 0.85 / (parent.icon_size / 32), shift = {0, -3}})

                            stacked_icon.icons = icons
                        end
                    end
                end
            end
        end
    end
end
