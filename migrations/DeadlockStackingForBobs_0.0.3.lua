local Items = require("items").items

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
    local tech_by_product = {}
    local recipes = game.recipe_prototypes
    for _, tech in pairs(game.technology_prototypes) do
        for _, effect in pairs(tech.effects) do
            if effect.type and effect.type == "unlock-recipe" then
                local recipe = recipes[effect.recipe]
                if recipe.main_product then
                    if recipe.main_product.type == "item" then
                        if not tech_by_product[recipe.main_product.name] then
                            tech_by_product[recipe.main_product.name] = {tech = {}}
                        end
                        table.insert(tech_by_product[recipe.main_product.name].tech, tech.name)
                    end
                elseif recipe.products then
                    for _, product in pairs(recipe.products) do
                        if product.type and product.type == "item" then
                            if not tech_by_product[product.name] then
                                tech_by_product[product.name] = {tech = {}}
                            end
                            table.insert(tech_by_product[product.name].tech, tech.name)
                        end
                    end
                end
            end
        end
    end
    return tech_by_product
end

local tech_to_check = {}
for name, data in pairs(walk_technology()) do
    if starts_with(name, "deadlock-") then
        for _, tech in pairs(data.tech) do
            tech_to_check[tech] = true
        end
    end
end

for index, force in pairs(game.forces) do
    local recipes = force.recipes
    for tech, _ in pairs(tech_to_check) do
        if force.technologies[tech] and force.technologies[tech].researched then
            for _, effect in pairs(force.technologies[tech].effects) do
                if effect.type and effect.type == "unlock-recipe" then
                    if recipes[effect.recipe] then
                        recipes[effect.recipe].enabled = true
                        recipes[effect.recipe].reload()
                    end
                end
            end
        end
    end
end
