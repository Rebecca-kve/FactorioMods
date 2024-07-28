
local function change_default(type, name, new_value)
	if data.raw[type][name] then
		data.raw[type][name].default_value = new_value
	end
end

--startup
if mods['aai-containers'] then
	change_default('bool-setting', 'aai-containers-scale-icons', true)
end

if mods['Adjustable-Inventory-Size'] then
	change_default('bool-setting', 'ais-inventorysize-enabled', true)
	change_default('int-setting', 'inventorysize', 500)
end

if mods['Load-Furn-2'] then
	change_default('bool-setting', 'logist', false)
	change_default('bool-setting', 'steel-plate2', false)
	change_default('bool-setting', 'cool', false)
	change_default('double-setting', 'load-furn-energy', 2)
end

if mods['Aircraft'] then
	change_default('bool-setting', 'aircraft-hardmode', true)
	change_default('bool-setting', 'helicopter-tech', true)
	change_default('bool-setting', 'inserter-immunity', true)
end

if ( mods['Aircraft'] and mods['HelicopterRevival'] ) then
	change_default('bool-setting', 'helicopter-tech', true)
end

if mods['ArmouredBiters'] then
	change_default('bool-setting', 'ab-enable-nest', true)
	change_default('string-setting', 'ab-leviathan-armoured-biter-spawn-probability', '75%')
end

if mods['bobenemies'] then
	change_default('bool-setting', 'bobmods-enemies-enableartifacts', false)
	change_default('bool-setting', 'bobmods-enemies-enablesmallartifacts', false)
	change_default('bool-setting', 'bobmods-enemies-enablenewartifacts', false)
	change_default('bool-setting', 'bobmods-enemies-aliensdropartifacts', false)
end

if mods['bobpower'] then
	change_default('bool-setting', 'bobmods-power-fluidgenerator', false)
	change_default('bool-setting', 'bobmods-power-accumulators', false)
	change_default('bool-setting', 'bobmods-power-solar', false)
end

if mods['bobassembly'] then
	change_default('bool-setting', 'bobmods-assembly-electrolysers', false)
	change_default('bool-setting', 'bobmods-assembly-furnaces', false)
	change_default('bool-setting', 'bobmods-assembly-multipurposefurnaces', false)
	change_default('bool-setting', 'bobmods-assembly-distilleries', false)
	change_default('bool-setting', 'bobmods-assembly-oilfurnaces', false)
	change_default('bool-setting', 'bobmods-assembly-burner', false)
end

if mods['burner-power-progression'] then
	change_default('double-setting', 'burner-power-progression-factor-solid', 1)
	change_default('string-setting', 'burner-power-progression-tiers-solid', '0.75, 0.85, 0.95, 1.05, 1.15')
	change_default('string-setting', 'burner-power-progression-tiers-fluid', '-.-, 0.85, 0.95, 1.05, 1.15')
end

if mods['bzsilicon'] then
	change_default('string-setting', 'bzsilicon-more-intermediates', 'yes')
end

if ( mods['bzzirconium'] and mods['bobassembly'] ) then
	change_default('string-setting', 'bzzirconium-recipe-bypass', 'assembling-machine-3')
end

if mods['CompressedFluids'] then
	change_default('bool-setting', 'fluid-compressor-singeEntity', true)
	change_default('int-setting', 'fluid-compression-rate', 5)
	change_default('int-setting', 'fluid-compression-speed', 20)
end

if mods['deadlock_stacked_recipes'] then
	change_default('bool-setting', 'Hide_DSR_recipes', true)
	change_default('bool-setting', 'dsr_new_subgroup_placement', false)
end

if mods['deadlock-beltboxes-loaders'] then
	change_default('bool-setting', 'deadlock-enable-loaders', false)
	change_default('bool-setting', 'deadlock-stacking-hide-unstacking', true)
	change_default('bool-setting', 'deadlock-stacking-batch-stacking', true)	
end

if mods['DropSciencePack'] then
	change_default('int-setting', 'loot-chest-size', 500)
end

if mods['Hovercrafts'] then
	change_default('bool-setting', 'enable-mcraft', false)
end

if mods['Krastorio2'] then
	change_default('int-setting', 'kr-long-hands', 10)
	change_default('bool-setting', 'kr-bonus-items', true)
	change_default('bool-setting', 'kr-containers', false)
	change_default('bool-setting', 'kr-rebalance-radar', false)
	change_default('bool-setting', 'kr-electric-poles-changes', false)
	change_default('bool-setting', 'kr-finite-oil', false)
	--Background
	change_default('bool-setting', 'kr-re-enable-menu-simulations', false)
	change_default('string-setting', 'kr-main-menu-background', 'Krastorio Legacy')
end

if mods['krastorio2_extended_endgame'] then
	change_default('int-setting', 'kee-activations', 25)
	change_default('int-setting', 'kee-initial-need-space-research', 2000)
	change_default('int-setting', 'kee-initial-need-matter-research', 2000)
	change_default('int-setting', 'kee-initial-need-advanced-research', 2000)
	change_default('int-setting', 'kee-initial-need-singularity-research', 2000)
end

if mods['Krastorio2_Modules_Updated'] then
	change_default('string-setting', 'k2-modules-efficiency-speed-bonus', 'none') --Way To OP
	change_default('string-setting', 'k2-modules-productivity-bonus', 'low')
	change_default('string-setting', 'k2-modules-energy-processing-circuit-color', 'cyan')
end

if mods['Krastorio2RFAC'] then
	change_default('bool-setting', 'K2RFAC-bool-add-atmo-condensation-recipes-to-chem-plant-setting', false)
	change_default('bool-setting', 'K2RFAC-bool-add-electrolysis-recipes-to-chem-plant-setting', false)
end

if mods['SchallEndgameEvolution'] then
	change_default('int-setting', 'endgameevolution-alien-tier-max', 8)
	change_default('string-setting', 'endgameevolution-difficulty', '2')
end

if mods['Moar-Radar'] then
	change_default('int-setting', 'moar-radar-nearby-reveal-area', 1)
	change_default('int-setting', 'moar-radar-reveal-area', 800)
	change_default('int-setting', 'moar-radar-power-consumption', 5)
end

if mods['RampantArsenal'] then
	change_default('bool-setting', 'rampant-arsenal-enableEquipment', false)
	change_default('bool-setting', 'rampant-arsenal-enableVehicle', false)
	change_default('bool-setting', 'rampant-arsenal-enableNuclearGeneratorEquipmentConsuming', false)
	change_default('bool-setting', 'rampant-arsenal-hideVanillaDamageTechnologies', false)
	change_default('bool-setting', 'rampant-arsenal-useInfiniteTechnologies', false)
end

if mods['robotworld-continued'] then
	change_default('double-setting', 'robot-speed-multiplier', 2)
	change_default('double-setting', 'roboport-logistics-radius-multiplier', 2)
	change_default('double-setting', 'roboport-construction-radius-multiplier', 2)
	change_default('bool-setting', 'only-modify-vanilla-roboport', true)
	change_default('double-setting', 'roboport-charging-rate-multiplier', 4)
	change_default('double-setting', 'roboport-buffer-multiplier', 2)
	change_default('bool-setting', 'enable-early-construction-robots', true)
	change_default('bool-setting', 'enable-early-logistic-robots', true)
	change_default('bool-setting', 'enable-early-logistic-system', true)
	change_default('double-setting', 'inserter-speed-multiplier', 1.5)
	change_default('double-setting', 'robot-energy-usage-multiplier', 2)
	change_default('double-setting', 'roboport-energy-usage-multiplier', 6)
end

if mods['safefill'] then
	change_default('string-setting', 'safefill-cost', 'Cheap')
	change_default('string-setting', 'safefill-depth', 'Medium only')
	change_default('bool-setting', 'safefill-green-water', false)
	change_default('bool-setting', 'safefill-water-on-water', false)
end

if mods['SchallAlienLoot'] then
	change_default('int-setting', 'alienloot-ore-stack-size', 200)
end

if mods['SchallRecipeScaling'] then
	change_default('int-setting', 'recipescaling-recipe-multiplier', 20)
	change_default('string-setting', 'safefill-depth', 'Medium only')
	change_default('string-setting', 'recipescaling-machine-include', 'furnace-pro-01, furnace-pro-02, furnace-pro-03, furnace-pro-04, furnace-pro-05, kr-advanced-furnace')
	change_default('string-setting', 'recipescaling-machine-scaled-only-include', 'furnace-pro-01, furnace-pro-02, furnace-pro-03, furnace-pro-04, furnace-pro-05, kr-advanced-furnace')
end

if mods['Speckled-advanced-solar'] then
	change_default('int-setting', 'advanced-solar-production', 600)
end


if mods['VisionRadar'] then
	change_default('int-setting', 'vision-radar-range', 10)
	change_default('bool-setting', 'mining-returns-vradar', true)
end

if mods['water-belts'] then
	change_default('bool-setting', 'wb-transport-belts', false)
	change_default('bool-setting', 'wb-electric-poles', true)
end

if mods['wret-beacon-rebalance-mod'] then
	change_default('bool-setting', 'wret-overload-enable-notnotmelon-style', true)
end


--Map
if mods['Automatic_Train_Painter'] then
	change_default('bool-setting', 'paint-cargo-wagon', true)
	change_default('bool-setting', 'paint-fluid-wagon', true)
	change_default('bool-setting', 'unpaint-empty', false)
end

if mods['railloader'] then
	change_default('string-setting', 'railloader-allowed-items', 'any')
end

--Per player
if mods['adaptive_movement_speed'] then
	change_default('double-setting', 'adaptive-movement-speed-maximum-speed', 300)
	change_default('double-setting', 'adaptive-movement-speed-speed-up-time', 3)
end

if mods['informatron'] then
	change_default('bool-setting', 'informatron-show-at-start', false)
end