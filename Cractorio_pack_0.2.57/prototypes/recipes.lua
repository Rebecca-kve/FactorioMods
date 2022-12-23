local util = require("__boblibrary__.recipe-functions");
--[[ mod got updated
if ( mods['wret-beacon-rebalance-mod'] and mods['Krastorio2'] ) then
	bobmods.lib.recipe.replace_ingredient("kr-singularity-beacon", "beacon", "beacon3-item")
end
]]
if mods['Krastorio2'] then
	if mods['bobassembly'] then
		bobmods.lib.recipe.replace_ingredient("kr-advanced-assembling-machine", "assembling-machine-3", "assembling-machine-6")
		if settings.startup["bobmods-assembly-chemicalplants"].value == true then	
			bobmods.lib.recipe.add_new_ingredient("kr-advanced-chemical-plant", "chemical-plant-4")
			bobmods.lib.recipe.remove_ingredient("kr-advanced-chemical-plant", "electronic-components")
		end
	end
	if settings.startup["k2-solar-and-powerstorage"].value == true then
		bobmods.lib.recipe.set_ingredient("kr-advanced-solar-panel", {"solar-panel", 4})
		bobmods.lib.recipe.add_new_ingredient("kr-energy-storage", {"accumulator", 9})
	end
	if mods['Krastorio2-more-locomotives'] then if settings.startup["fusion+antimatter-locomotiv-buff"].value == true then
		bobmods.lib.recipe.set_ingredient("kr-fusion-locomotive", {"fusion-reactor-equipment", 1})
		bobmods.lib.recipe.set_ingredient("kr-antimatter-locomotive", {"antimatter-reactor-equipment", 1})
		bobmods.lib.recipe.replace_ingredient("kr-fusion-locomotive", "ai-core", "low-density-structure")
		bobmods.lib.recipe.replace_ingredient("kr-antimatter-locomotive", "kr-nuclear-locomotive", "kr-fusion-locomotive")
	end end
end

if ( mods['bzcarbon'] and mods['bobassembly'] ) then
	if settings.startup["bobmods-assembly-electronicmachines"].value == true then
		bobmods.lib.recipe.add_new_ingredient("electronics-machine-3", {"diamond", 4})
	end
end


if ( mods['Load-Furn-2'] and mods['Krastorio2'] ) then
	bobmods.lib.recipe.add_new_ingredient("kr-advanced-furnace", "furnace-pro-05")
end


if mods['bobpower'] then if settings.startup["bobmods-power-steam"].value == true then
	bobmods.lib.recipe.replace_ingredient("kr-advanced-steam-turbine", "steam-turbine", "steam-turbine-3")
end end



