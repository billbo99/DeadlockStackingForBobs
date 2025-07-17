local Items = require("migrations.items").items

local function contains(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
        end
    end
    return false
end

local function starts_with(str, start)
    return str:sub(1, #start) == start
end

local function reenable_tech(force, tech)
    local recipes = force.recipes
    local force_tech = force.technologies[tech]
    for _, effect in pairs(force_tech.prototype.effects) do
        if effect.type == "unlock-recipe" and starts_with(effect.recipe, "deadlock") then
            recipes[effect.recipe].enabled = true
            recipes[effect.recipe].reload()
        end
    end
end

local function OnConfigurationChanged(e)
    -- e.mod_changes
    -- e.mod_startup_settings_changed
    -- e.migration_applied
    log("on_configuration_changed")
    if e.mod_startup_settings_changed or e.mod_changes["DeadlockStackingForKrastorio2"] then
        for index, force in pairs(game.forces) do
            for _, item in pairs(Items) do
                if item.tier and force.technologies[item.tier] and force.technologies[item.tier].researched then
                    reenable_tech(force, item.tier)
                end
            end
        end
    end
end

script.on_configuration_changed(OnConfigurationChanged)
