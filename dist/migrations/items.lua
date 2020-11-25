local Items = {}

Items.items = {
    --bob-alien-resource
    ["alien-blue-alloy"] = {tech = "alien-blue-research", type = "item"},
    ["alien-orange-alloy"] = {tech = "alien-orange-research", type = "item"},
    --bob-alloy
    ["brass-alloy"] = {tech = "zinc-processing", type = "item"},
    ["bronze-alloy"] = {tech = "alloy-processing-1", type = "item"},
    ["cobalt-steel-alloy"] = {tech = "cobalt-processing", type = "item"},
    ["copper-tungsten-alloy"] = {tech = "tungsten-alloy-processing", type = "item"},
    ["gunmetal-alloy"] = {tech = "zinc-processing", type = "item"},
    ["invar-alloy"] = {tech = "invar-processing", type = "item"},
    ["nitinol-alloy"] = {tech = "nitinol-processing", type = "item"},
    ["solder-alloy"] = {tech = "electronics", type = "item"},
    ["tungsten-carbide"] = {tech = "tungsten-alloy-processing", type = "item"},
    --bob-bearings
    ["ceramic-bearing"] = {tech = "ceramics", type = "item"},
    ["ceramic-bearing-ball"] = {tech = "ceramics", type = "item"},
    ["cobalt-steel-bearing"] = {tech = "cobalt-processing", type = "item"},
    ["cobalt-steel-bearing-ball"] = {tech = "cobalt-processing", type = "item"},
    ["nitinol-bearing"] = {tech = "nitinol-processing", type = "item"},
    ["nitinol-bearing-ball"] = {tech = "nitinol-processing", type = "item"},
    ["steel-bearing"] = {tech = "steel-processing", type = "item"},
    ["steel-bearing-ball"] = {tech = "steel-processing", type = "item"},
    ["titanium-bearing"] = {tech = "titanium-processing", type = "item"},
    ["titanium-bearing-ball"] = {tech = "titanium-processing", type = "item"},
    --bob-boards
    ["fibreglass-board"] = {tech = "advanced-electronics-2", type = "item"},
    ["phenolic-board"] = {tech = "advanced-electronics", type = "item"},
    ["wooden-board"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    --bob-electronic-boards
    ["advanced-circuit"] = {tech = "advanced-electronics", type = "item"},
    ["advanced-processing-unit"] = {tech = "advanced-electronics-3", type = "item"},
    ["basic-circuit-board"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["circuit-board"] = {tech = "advanced-electronics", type = "item"},
    ["electronic-circuit"] = {tech = "electronics", type = "item"},
    ["multi-layer-circuit-board"] = {tech = "advanced-electronics-3", type = "item"},
    ["processing-unit"] = {tech = "advanced-electronics-2", type = "item"},
    ["superior-circuit-board"] = {tech = "advanced-electronics-2", type = "item"},
    --bob-electronic-components
    ["basic-electronic-components"] = {tech = "electronics", type = "item"},
    ["electronic-components"] = {tech = "advanced-electronics", type = "item"},
    ["gilded-copper-cable"] = {tech = "advanced-electronics-3", type = "item"},
    ["insulated-cable"] = {tech = "electronics", type = "item"},
    ["intergrated-electronics"] = {tech = "advanced-electronics-2", type = "item"},
    ["processing-electronics"] = {tech = "advanced-electronics-3", type = "item"},
    ["solder"] = {tech = "electronics", type = "item"},
    ["tinned-copper-cable"] = {tech = "electronics", type = "item"},
    --bob-gears
    ["brass-gear-wheel"] = {tech = "zinc-processing", type = "item"},
    ["cobalt-steel-gear-wheel"] = {tech = "cobalt-processing", type = "item"},
    ["nitinol-gear-wheel"] = {tech = "nitinol-processing", type = "item"},
    ["steel-gear-wheel"] = {tech = "steel-processing", type = "item"},
    ["titanium-gear-wheel"] = {tech = "titanium-processing", type = "item"},
    ["tungsten-gear-wheel"] = {tech = "tungsten-processing", type = "item"},
    --bob-gems-cut
    ["amethyst-4"] = {tech = "gem-processing-1", type = "item"},
    ["diamond-4"] = {tech = "gem-processing-1", type = "item"},
    ["emerald-4"] = {tech = "gem-processing-1", type = "item"},
    ["ruby-4"] = {tech = "gem-processing-1", type = "item"},
    ["sapphire-4"] = {tech = "gem-processing-1", type = "item"},
    ["topaz-4"] = {tech = "gem-processing-1", type = "item"},
    --bob-gems-polished
    ["amethyst-5"] = {tech = "gem-processing-2", type = "item"},
    ["diamond-5"] = {tech = "gem-processing-2", type = "item"},
    ["emerald-5"] = {tech = "gem-processing-2", type = "item"},
    ["ruby-5"] = {tech = "gem-processing-2", type = "item"},
    ["sapphire-5"] = {tech = "gem-processing-2", type = "item"},
    ["topaz-5"] = {tech = "gem-processing-2", type = "item"},
    --bob-gems-raw
    ["amethyst-3"] = {tech = "deadlock-stacking-1", type = "item"},
    ["diamond-3"] = {tech = "deadlock-stacking-1", type = "item"},
    ["emerald-3"] = {tech = "deadlock-stacking-1", type = "item"},
    ["ruby-3"] = {tech = "deadlock-stacking-1", type = "item"},
    ["sapphire-3"] = {tech = "deadlock-stacking-1", type = "item"},
    ["topaz-3"] = {tech = "deadlock-stacking-1", type = "item"},
    --bob-greenhouse-items
    ["seedling"] = {tech = "bob-greenhouse", type = "item"},
    --bob-intermediates
    ["grinding-wheel"] = {tech = "grinding", type = "item"},
    ["lithium-ion-battery"] = {tech = "battery-2", type = "item"},
    ["polishing-wheel"] = {tech = "polishing", type = "item"},
    ["rocket-engine"] = {tech = "rocketry", type = "item"},
    ["silver-zinc-battery"] = {tech = "battery-3", type = "item"},
    --bob-logistic-tier-0
    ["basic-transport-belt"] = {tech = "deadlock-stacking-1", type = "item"},
    ["basic-underground-belt"] = {tech = "logistics-0", type = "item"},
    ["basic-splitter"] = {tech = "logistics-0", type = "item"},
    ["burner-inserter"] = {tech = "deadlock-stacking-1", type = "item"},
    --bob-logistic-tier-1
    ["transport-belt"] = {tech = "logistics", type = "item"},
    ["underground-belt"] = {tech = "logistics", type = "item"},
    ["splitter"] = {tech = "logistics", type = "item"},
    ["inserter"] = {tech = "deadlock-stacking-1", type = "item"},
    ["yellow-filter-inserter"] = {tech = "electronics", type = "item"},
    --bob-logistic-tier-2
    ["fast-transport-belt"] = {tech = "logistics-2", type = "item"},
    ["fast-underground-belt"] = {tech = "logistics-2", type = "item"},
    ["fast-splitter"] = {tech = "logistics-2", type = "item"},
    ["long-handed-inserter"] = {tech = "fast-inserter", type = "item"},
    ["red-filter-inserter"] = {tech = "fast-inserter", type = "item"},
    ["red-stack-filter-inserter"] = {tech = "stack-inserter", type = "item"},
    ["red-stack-inserter"] = {tech = "stack-inserter", type = "item"},
    --bob-logistic-tier-3
    ["express-transport-belt"] = {tech = "logistics-3", type = "item"},
    ["express-underground-belt"] = {tech = "logistics-3", type = "item"},
    ["express-splitter"] = {tech = "logistics-3", type = "item"},
    ["fast-inserter"] = {tech = "express-inserters", type = "item"},
    ["filter-inserter"] = {tech = "express-inserters", type = "item"},
    ["stack-filter-inserter"] = {tech = "stack-inserter-2", type = "item"},
    ["stack-inserter"] = {tech = "stack-inserter-2", type = "item"},
    --bob-logistic-tier-4
    ["turbo-transport-belt"] = {tech = "logistics-4", type = "item"},
    ["turbo-underground-belt"] = {tech = "logistics-4", type = "item"},
    ["turbo-splitter"] = {tech = "logistics-4", type = "item"},
    ["turbo-filter-inserter"] = {tech = "turbo-inserter", type = "item"},
    ["turbo-inserter"] = {tech = "turbo-inserter", type = "item"},
    ["turbo-stack-filter-inserter"] = {tech = "stack-inserter-3", type = "item"},
    ["turbo-stack-inserter"] = {tech = "stack-inserter-3", type = "item"},
    --bob-logistic-tier-5
    ["ultimate-transport-belt"] = {tech = "logistics-5", type = "item"},
    ["ultimate-underground-belt"] = {tech = "logistics-5", type = "item"},
    ["ultimate-splitter"] = {tech = "logistics-5", type = "item"},
    ["express-filter-inserter"] = {tech = "ultimate-inserter", type = "item"},
    ["express-inserter"] = {tech = "ultimate-inserter", type = "item"},
    ["express-stack-filter-inserter"] = {tech = "stack-inserter-4", type = "item"},
    ["express-stack-inserter"] = {tech = "stack-inserter-4", type = "item"},
    --bob-material
    ["aluminium-plate"] = {tech = "aluminium-processing", type = "item"},
    ["cobalt-plate"] = {tech = "cobalt-processing", type = "item"},
    ["gold-plate"] = {tech = "gold-processing", type = "item"},
    ["lead-plate"] = {tech = "lead-processing", type = "item"},
    ["lithium"] = {tech = "lithium-processing", type = "item"},
    ["nickel-plate"] = {tech = "nickel-processing", type = "item"},
    ["plutonium-239"] = {tech = "bobingabout-enrichment-process", type = "item"},
    ["silicon"] = {tech = "silicon-processing", type = "item"},
    ["silver-plate"] = {tech = "deadlock-stacking-1", type = "item"},
    ["thorium-232"] = {tech = "thorium-processing", type = "item"},
    ["tin-plate"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["titanium-plate"] = {tech = "titanium-processing", type = "item"},
    ["tungsten-plate"] = {tech = "tungsten-processing", type = "item"},
    ["zinc-plate"] = {tech = "zinc-processing", type = "item"},
    --bob-ores
    ["amethyst-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["bauxite-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["cobalt-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["diamond-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["emerald-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["gem-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["gold-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["lead-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["nickel-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["quartz"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["ruby-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["rutile-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["sapphire-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["silver-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["thorium-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["tin-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["topaz-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["tungsten-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["zinc-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    --bob-resource
    ["carbon"] = {tech = "chemical-processing-1", type = "item"},
    ["enriched-fuel"] = {tech = "hydrazine", type = "item"},
    ["glass"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["gun-cotton"] = {tech = "cordite-processing", type = "item"},
    ["lithium-cobalt-oxide"] = {tech = "battery-2", type = "item"},
    ["petroleum-jelly"] = {tech = "cordite-processing", type = "item"},
    ["polishing-compound"] = {tech = "polishing", type = "item"},
    ["resin"] = {tech = "oil-processing", type = "item"},
    ["rubber"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["silicon-wafer"] = {tech = "silicon-processing", type = "item"},
    --bob-resource-chemical
    ["alumina"] = {tech = "aluminium-processing", type = "item"},
    ["ammonium-chloride"] = {tech = "rtg", type = "item"},
    ["calcium-chloride"] = {tech = "rtg", type = "item"},
    ["cobalt-oxide"] = {tech = "cobalt-processing", type = "item"},
    ["fertiliser"] = {tech = "bob-fertiliser", type = "item"},
    ["fusion-catalyst"] = {tech = "nuclear-fuel-reprocessing", type = "item"},
    ["lead-oxide"] = {tech = "lead-processing", type = "item"},
    ["limestone"] = {tech = "chemical-processing-2", type = "item"},
    ["lithium-chloride"] = {tech = "lithium-processing", type = "item"},
    ["lithium-perchlorate"] = {tech = "lithium-processing", type = "item"},
    ["powdered-tungsten"] = {tech = "tungsten-processing", type = "item"},
    ["salt"] = {tech = "chemical-processing-1", type = "item"},
    ["silicon-carbide"] = {tech = "grinding", type = "item"},
    ["silicon-nitride"] = {tech = "ceramics", type = "item"},
    ["silicon-powder"] = {tech = "silicon-processing", type = "item"},
    ["silver-nitrate"] = {tech = "battery-3", type = "item"},
    ["silver-oxide"] = {tech = "battery-3", type = "item"},
    ["sodium-bicarbonate"] = {tech = "rtg", type = "item"},
    ["sodium-carbonate"] = {tech = "rtg", type = "item"},
    ["sodium-chlorate"] = {tech = "lithium-processing", type = "item"},
    ["sodium-cobaltate"] = {tech = "rtg", type = "item"},
    ["sodium-hydroxide"] = {tech = "electrolysis-2", type = "item"},
    ["sodium-perchlorate"] = {tech = "lithium-processing", type = "item"},
    ["tungsten-oxide"] = {tech = "tungsten-processing", type = "item"},
    --effectivity-module
    ["effectivity-module"] = {tech = "effectivity-module", type = "module"},
    ["effectivity-module-2"] = {tech = "effectivity-module-2", type = "module"},
    ["effectivity-module-3"] = {tech = "effectivity-module-3", type = "module"},
    ["effectivity-module-4"] = {tech = "effectivity-module-4", type = "module"},
    ["effectivity-module-5"] = {tech = "effectivity-module-5", type = "module"},
    ["effectivity-module-6"] = {tech = "effectivity-module-6", type = "module"},
    ["effectivity-module-7"] = {tech = "effectivity-module-7", type = "module"},
    ["effectivity-module-8"] = {tech = "effectivity-module-8", type = "module"},
    --green-module
    ["green-module-1"] = {tech = "green-module-1", type = "module"},
    ["green-module-2"] = {tech = "green-module-2", type = "module"},
    ["green-module-3"] = {tech = "green-module-3", type = "module"},
    ["green-module-4"] = {tech = "green-module-4", type = "module"},
    ["green-module-5"] = {tech = "green-module-5", type = "module"},
    ["green-module-6"] = {tech = "green-module-6", type = "module"},
    ["green-module-7"] = {tech = "green-module-7", type = "module"},
    ["green-module-8"] = {tech = "green-module-8", type = "module"},
    --intermediate-product
    ["copper-cable"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["deuterium-fuel-cell"] = {tech = "bob-nuclear-power-3", type = "item"},
    ["electric-engine-unit"] = {tech = "electric-engine", type = "item"},
    ["empty-barrel"] = {tech = "fluid-handling", type = "item"},
    ["engine-unit"] = {tech = "engine", type = "item"},
    ["iron-gear-wheel"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["iron-stick"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["low-density-structure"] = {tech = "low-density-structure", type = "item"},
    ["nuclear-fuel"] = {tech = "kovarex-enrichment-process", type = "item"},
    ["plutonium-fuel-cell"] = {tech = "plutonium-fuel-cell", type = "item"},
    ["robot-drone-frame"] = {tech = "robotics", type = "item"},
    ["rocket-control-unit"] = {tech = "rocket-control-unit", type = "item"},
    ["rocket-fuel"] = {tech = "rocket-fuel", type = "item"},
    ["rocket-part"] = {tech = "rocket-silo", type = "item"},
    ["thorium-fuel-cell"] = {tech = "bob-nuclear-power-2", type = "item"},
    ["thorium-plutonium-fuel-cell"] = {tech = "thorium-plutonium-fuel-cell", type = "item"},
    ["uranium-235"] = {tech = "uranium-processing", type = "item"},
    ["uranium-238"] = {tech = "nuclear-fuel-reprocessing", type = "item"},
    ["uranium-fuel-cell"] = {tech = "nuclear-power", type = "item"},
    ["used-up-deuterium-fuel-cell"] = {tech = "deuterium-fuel-reprocessing", type = "item"},
    ["used-up-thorium-fuel-cell"] = {tech = "thorium-fuel-reprocessing", type = "item"},
    ["used-up-uranium-fuel-cell"] = {tech = "nuclear-fuel-reprocessing", type = "item"},
    --module-intermediates
    ["effectivity-processor"] = {tech = "modules", type = "tool"},
    ["effectivity-processor-2"] = {tech = "effectivity-module-3", type = "item"},
    ["effectivity-processor-3"] = {tech = "effectivity-module-6", type = "item"},
    ["module-case"] = {tech = "modules", type = "tool"},
    ["module-circuit-board"] = {tech = "modules", type = "tool"},
    ["module-contact"] = {tech = "modules", type = "item"},
    ["module-processor-board"] = {tech = "modules", type = "item"},
    ["module-processor-board-2"] = {tech = "advanced-electronics-2", type = "item"},
    ["module-processor-board-3"] = {tech = "advanced-electronics-3", type = "item"},
    ["pollution-clean-processor"] = {tech = "modules", type = "tool"},
    ["pollution-clean-processor-2"] = {tech = "pollution-clean-module-3", type = "item"},
    ["pollution-clean-processor-3"] = {tech = "pollution-clean-module-6", type = "item"},
    ["pollution-create-processor"] = {tech = "modules", type = "tool"},
    ["pollution-create-processor-2"] = {tech = "pollution-create-module-3", type = "item"},
    ["pollution-create-processor-3"] = {tech = "pollution-create-module-6", type = "item"},
    ["productivity-processor"] = {tech = "modules", type = "tool"},
    ["productivity-processor-2"] = {tech = "productivity-module-3", type = "item"},
    ["productivity-processor-3"] = {tech = "productivity-module-6", type = "item"},
    ["speed-processor"] = {tech = "modules", type = "tool"},
    ["speed-processor-2"] = {tech = "speed-module-3", type = "item"},
    ["speed-processor-3"] = {tech = "speed-module-6", type = "item"},
    --pollution-clean-module
    ["pollution-clean-module-1"] = {tech = "pollution-clean-module-1", type = "module"},
    ["pollution-clean-module-2"] = {tech = "pollution-clean-module-2", type = "module"},
    ["pollution-clean-module-3"] = {tech = "pollution-clean-module-3", type = "module"},
    ["pollution-clean-module-4"] = {tech = "pollution-clean-module-4", type = "module"},
    ["pollution-clean-module-5"] = {tech = "pollution-clean-module-5", type = "module"},
    ["pollution-clean-module-6"] = {tech = "pollution-clean-module-6", type = "module"},
    ["pollution-clean-module-7"] = {tech = "pollution-clean-module-7", type = "module"},
    ["pollution-clean-module-8"] = {tech = "pollution-clean-module-8", type = "module"},
    --pollution-create-module
    ["pollution-create-module-1"] = {tech = "pollution-create-module-1", type = "module"},
    ["pollution-create-module-2"] = {tech = "pollution-create-module-2", type = "module"},
    ["pollution-create-module-3"] = {tech = "pollution-create-module-3", type = "module"},
    ["pollution-create-module-4"] = {tech = "pollution-create-module-4", type = "module"},
    ["pollution-create-module-5"] = {tech = "pollution-create-module-5", type = "module"},
    ["pollution-create-module-6"] = {tech = "pollution-create-module-6", type = "module"},
    ["pollution-create-module-7"] = {tech = "pollution-create-module-7", type = "module"},
    ["pollution-create-module-8"] = {tech = "pollution-create-module-8", type = "module"},
    --productivity-module
    ["productivity-module"] = {tech = "productivity-module", type = "module"},
    ["productivity-module-2"] = {tech = "productivity-module-2", type = "module"},
    ["productivity-module-3"] = {tech = "productivity-module-3", type = "module"},
    ["productivity-module-4"] = {tech = "productivity-module-4", type = "module"},
    ["productivity-module-5"] = {tech = "productivity-module-5", type = "module"},
    ["productivity-module-6"] = {tech = "productivity-module-6", type = "module"},
    ["productivity-module-7"] = {tech = "productivity-module-7", type = "module"},
    ["productivity-module-8"] = {tech = "productivity-module-8", type = "module"},
    --raw-material
    ["alien-artifact"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["alien-artifact-blue"] = {tech = "basic-transport-belt-beltbox1", type = "item"},
    ["alien-artifact-green"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["alien-artifact-orange"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["alien-artifact-purple"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["alien-artifact-red"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["alien-artifact-yellow"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["battery"] = {tech = "battery", type = "item"},
    ["copper-plate"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["explosives"] = {tech = "explosives", type = "item"},
    ["iron-plate"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["plastic-bar"] = {tech = "plastics", type = "item"},
    ["small-alien-artifact"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["small-alien-artifact-blue"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["small-alien-artifact-green"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["small-alien-artifact-orange"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["small-alien-artifact-purple"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["small-alien-artifact-red"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["small-alien-artifact-yellow"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["solid-fuel"] = {tech = "solid-fuel", type = "item"},
    ["steel-plate"] = {tech = "steel-processing", type = "item"},
    ["sulfur"] = {tech = "sulfur-processing", type = "item"},
    --raw-productivity-module
    ["raw-productivity-module-1"] = {tech = "raw-productivity-module-1", type = "module"},
    ["raw-productivity-module-2"] = {tech = "raw-productivity-module-2", type = "module"},
    ["raw-productivity-module-3"] = {tech = "raw-productivity-module-3", type = "module"},
    ["raw-productivity-module-4"] = {tech = "raw-productivity-module-4", type = "module"},
    ["raw-productivity-module-5"] = {tech = "raw-productivity-module-5", type = "module"},
    ["raw-productivity-module-6"] = {tech = "raw-productivity-module-6", type = "module"},
    ["raw-productivity-module-7"] = {tech = "raw-productivity-module-7", type = "module"},
    ["raw-productivity-module-8"] = {tech = "raw-productivity-module-8", type = "module"},
    --raw-resource
    ["coal"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["copper-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["iron-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["stone"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["uranium-ore"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["wood"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    ["wood-pellets"] = {tech = "basic-transport-belt-beltbox", type = "item"},
    --raw-speed-module
    ["raw-speed-module-1"] = {tech = "raw-speed-module-1", type = "module"},
    ["raw-speed-module-2"] = {tech = "raw-speed-module-2", type = "module"},
    ["raw-speed-module-3"] = {tech = "raw-speed-module-3", type = "module"},
    ["raw-speed-module-4"] = {tech = "raw-speed-module-4", type = "module"},
    ["raw-speed-module-5"] = {tech = "raw-speed-module-5", type = "module"},
    ["raw-speed-module-6"] = {tech = "raw-speed-module-6", type = "module"},
    ["raw-speed-module-7"] = {tech = "raw-speed-module-7", type = "module"},
    ["raw-speed-module-8"] = {tech = "raw-speed-module-8", type = "module"},
    --science-pack
    ["automation-science-pack"] = {tech = "deadlock-stacking-1", type = "tool"},
    ["logistic-science-pack"] = {tech = "logistic-science-pack", type = "tool"},
    ["military-science-pack"] = {tech = "military-science-pack", type = "tool"},
    ["chemical-science-pack"] = {tech = "chemical-science-pack", type = "tool"},
    ["advanced-logistic-science-pack"] = {tech = "advanced-logistic-science-pack", type = "tool"},
    ["production-science-pack"] = {tech = "production-science-pack", type = "tool"},
    ["utility-science-pack"] = {tech = "utility-science-pack", type = "tool"},
    ["science-pack-gold"] = {tech = "alien-research", type = "tool"},
    ["alien-science-pack"] = {tech = "alien-research", type = "tool"},
    ["alien-science-pack-blue"] = {tech = "alien-research", type = "tool"},
    ["alien-science-pack-orange"] = {tech = "alien-research", type = "tool"},
    ["alien-science-pack-purple"] = {tech = "alien-research", type = "tool"},
    ["alien-science-pack-yellow"] = {tech = "alien-research", type = "tool"},
    ["alien-science-pack-green"] = {tech = "alien-research", type = "tool"},
    ["alien-science-pack-red"] = {tech = "alien-research", type = "tool"},
    ["space-science-pack"] = {tech = "space-science-pack", type = "tool"},
    --speed-module
    ["speed-module"] = {tech = "speed-module", type = "module"},
    ["speed-module-2"] = {tech = "speed-module-2", type = "module"},
    ["speed-module-3"] = {tech = "speed-module-3", type = "module"},
    ["speed-module-4"] = {tech = "speed-module-4", type = "module"},
    ["speed-module-5"] = {tech = "speed-module-5", type = "module"},
    ["speed-module-6"] = {tech = "speed-module-6", type = "module"},
    ["speed-module-7"] = {tech = "speed-module-7", type = "module"},
    ["speed-module-8"] = {tech = "speed-module-8", type = "module"},
    --pipes
    ["copper-pipe"] = {},
    ["pipe"] = {},
    ["stone-pipe"] = {},
    ["bronze-pipe"] = {},
    ["steel-pipe"] = {},
    ["plastic-pipe"] = {},
    ["brass-pipe"] = {},
    ["titanium-pipe"] = {},
    ["ceramic-pipe"] = {},
    ["tungsten-pipe"] = {},
    ["nitinol-pipe"] = {},
    ["copper-tungsten-pipe"] = {},
    ["copper-pipe-to-ground"] = {},
    ["pipe-to-ground"] = {},
    ["stone-pipe-to-ground"] = {},
    ["bronze-pipe-to-ground"] = {},
    ["steel-pipe-to-ground"] = {},
    ["plastic-pipe-to-ground"] = {},
    ["brass-pipe-to-ground"] = {},
    ["titanium-pipe-to-ground"] = {},
    ["ceramic-pipe-to-ground"] = {},
    ["tungsten-pipe-to-ground"] = {},
    ["nitinol-pipe-to-ground"] = {},
    ["copper-tungsten-pipe-to-ground"] = {},
    --heat pipes
    ["heat-pipe"] = {},
    ["heat-pipe-2"] = {},
    ["heat-pipe-3"] = {},
    ["heat-shield-tile"] = {},
    --chests
    ["brass-chest"] = {},
    ["steel-chest"] = {},
    ["titanium-chest"] = {},
    --science ingredients
    ["stone-wall"] = {},
    ["firearm-magazine"] = {type = "ammo"},
    ["piercing-rounds-magazine"] = {type = "ammo"},
    ["grenade"] = {type = "capsule"},
    ["flying-robot-frame"] = {},
    ["electric-furnace"] = {},
    ["chemical-plant"] = {},
    ["assembling-machine-1"] = {},
    ["assembling-machine-2"] = {},
    --rail
    ["rail"] = {tier = "railway", type = "rail-planner"},
    --tile
    ["landfill"] = {},
    ["concrete"] = {},
    ["hazard-concrete"] = {},
    ["refined-concrete"] = {},
    ["refined-hazard-concrete"] = {}
}

return Items