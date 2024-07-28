if mods['Krastorio2'] then
	if settings.startup["k2-advanced-module-count"].value == true then
		data.raw["assembling-machine"]["kr-advanced-assembling-machine"].module_specification = { 
			module_slots = 6, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5 
		}
		data.raw["assembling-machine"]["kr-advanced-chemical-plant"].module_specification = {
			module_slots = 6, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5 
		}
	end	
	
	if settings.startup["k2-solar-and-powerstorage"].value == true then
		data.raw["solar-panel"]["kr-advanced-solar-panel"].production = "600kW"
		data.raw["accumulator"]["kr-energy-storage"].energy_source = {
			type = "electric",
			buffer_capacity = "600MJ",
			usage_priority = "tertiary",
			input_flow_limit = "5MW",
			output_flow_limit = "5MW",
		}
	end
	
	if mods['Load-Furn-2'] then
		data.raw["assembling-machine"]["kr-advanced-furnace"].module_specification = { 
		module_slots = 8, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5 
	}
		data.raw["assembling-machine"]["kr-advanced-furnace"].crafting_speed = 384
		data.raw["assembling-machine"]["kr-advanced-furnace"].energy_usage = "300MW"
		data.raw["assembling-machine"]["kr-advanced-furnace"].energy_source = {
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = 192,
		}
	else
		if settings.startup["k2-advanced-module-count"].value == true then
			data.raw["assembling-machine"]["kr-advanced-furnace"].module_specification = { 
				module_slots = 6, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5 
			}
		end
	end
	
	
	if mods['Krastorio2-more-locomotives'] then 
		if settings.startup["fusion+antimatter-locomotiv-buff"].value == true then
			data.raw["locomotive"]["kr-fusion-locomotive"].weight = 13000
			data.raw["locomotive"]["kr-antimatter-locomotive"].weight = 14000
		end
	end
	
	
--Aircraft Grid Option to restore grid

if mods["Aircraft"] then 
	if settings.startup["Buff-Aircraft-grid"].value == "Balanced" then
		data:extend ({	
			{
				type = "equipment-grid",
				name = "fortress-new-grid",
				width = 9,
				height = 8,
				equipment_categories = {"universal-equipment", "vehicle-equipment", "vehicle-motor", "aircraft-equipment"}
			},
			{
				type = "equipment-grid",
				name = "gunship-new-grid",
				width = 5,
				height = 6,
				equipment_categories = {"universal-equipment", "vehicle-equipment", "vehicle-motor", "aircraft-equipment"}
			},
			{
				type = "equipment-grid",
				name = "jet-new-grid",
				width = 4,
				height = 4,
				equipment_categories = {"universal-equipment", "vehicle-equipment", "vehicle-motor", "aircraft-equipment"}
			},
		})
		data.raw["car"]["gunship"].equipment_grid = "gunship-new-grid"
		data.raw["car"]["jet"].equipment_grid = "jet-new-grid"
		data.raw["car"]["flying-fortress"].equipment_grid = "fortress-new-grid"	
	end --end restore grid
	if settings.startup["Buff-Aircraft-grid"].value == "Aircraft" then
			data:extend ({	
			{
				type = "equipment-grid",
				name = "fortress-new-grid2",
				width = 13,
				height = 12,
				equipment_categories = {"universal-equipment", "vehicle-equipment", "vehicle-motor", "aircraft-equipment"}
			},
			{
				type = "equipment-grid",
				name = "gunship-new-grid2",
				width = 8,
				height = 4,
				equipment_categories = {"universal-equipment", "vehicle-equipment", "vehicle-motor", "aircraft-equipment"}
			},
			{
				type = "equipment-grid",
				name = "jet-new-grid2",
				width = 8,
				height = 4,
				equipment_categories = {"universal-equipment", "vehicle-equipment", "vehicle-motor", "aircraft-equipment"}
			},
		})
		data.raw["car"]["gunship"].equipment_grid = "gunship-new-grid2"
		data.raw["car"]["jet"].equipment_grid = "jet-new-grid2"
		data.raw["car"]["flying-fortress"].equipment_grid = "fortress-new-grid2"	
	end

data.raw["car"]["flying-fortress"].guns = {
		"flying-fortress-machine-gun", 
		"aircraft-cannon", 
		"flying-fortress-rocket-launcher",
		"advanced-tank-cannon-c"
	}
end -- end if aircraft

end --End k2

if mods["bobassembly"] then if settings.startup["bobmods-assembly-centrifuge"].value == true then
	if settings.startup["bob-centrifuge-nerf"].value == true then
		data.raw["assembling-machine"]["centrifuge-2"].module_specification = { module_slots = 3 }
		data.raw["assembling-machine"]["centrifuge-3"].module_specification = { module_slots = 4 }
	end
end end


--[[ Mod was updated
	if mods['wret-beacon-rebalance-mod'] then
		data.raw["beacon"]["kr-singularity-beacon"].supply_area_distance = 9
		data.raw["beacon"]["kr-singularity-beacon"].module_specification = {
			module_slots = 20,
			module_info_icon_shift = { 0, 0.5 },
			module_info_multi_row_initial_height_modifier = -0.3,
		}
		data.raw["beacon"]["kr-singularity-beacon"].energy_usage = "35MW"
	end --]]