if not settings.startup["deadlock-enable-beltboxes"] or not settings.startup["deadlock-enable-beltboxes"].value then
    return
end

local rusty_locale = require "__rusty-locale__.locale"
local rusty_icons = require "__rusty-locale__.icons"
local rusty_recipes = require "__rusty-locale__.recipes"

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
    if not data.raw.recipe[default_beltbox] then
        default_beltbox = "deadlock-stacking-1"
    end

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

        if tech_by_product[name] then
            techs = dedup_list(tech_by_product[name].tech)
            item_type = tech_by_product[name].type or "item"
        else
            techs = {item.tech}
        end

        if item.type then
            item_type = item.type
        end

        log(string.format("%s -- %s", item_type, name))
        if data.raw[item_type] and data.raw[item_type][name] then
            if data.raw.item["deadlock-stack-" .. name] then
                deadlock.destroy_stack(name)
            end

            log(string.format("%s -- %s", name, techs[1]))
            if data.raw.technology[techs[1]] then
                deadlock.add_stack(name, icon, techs[1], icon_size, item_type)
                if #techs > 1 then
                    for i = 2, #techs do
                        add_item_to_tech(name, techs[i])
                    end
                end
            end
        else
            log("not found ... data.raw[" .. item_type .. "][" .. name .. "]")
        end
    end
end

walk_technology()
walk_recipes()
main()
