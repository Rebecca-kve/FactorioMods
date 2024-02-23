local flib_data_util = require('__flib__.data-util');

color = {
	["burner"] = { 
	  r = 200 / 255,
	  g = 160 / 255,
	  b = 90 / 255,
	  a = 1.0 },
}

local fuel = { "chemical", "vehicle-fuel" }
if mods["aai-industry"] then table.insert(fuel, "processed-chemical") end

--- the old machine is used as a dummy to preserve items
local burner_only_entity = flib_data_util.copy_prototype(data.raw["assembling-machine"]["assembling-machine-1"], "SW-burner-beacon")
burner_only_entity.crafting_categories = {"SW-fuel-burn"}
burner_only_entity.energy_usage = "1.2MW"
burner_only_entity.energy_source = {
	type = "burner",
	fuel_categories = fuel,
	effectivity = 0.20,
	fuel_inventory_size = 1,
	emissions_per_minute = 4,
	burnt_inventory_size = 1,
	render_no_power_icon = false,
}
burner_only_entity.crafting_speed = 1
burner_only_entity.fixed_recipe = "SW-fuel-burning"
burner_only_entity.next_upgrade = nil
burner_only_entity.collision_box = {{-0.7, -0.7}, {0.7, 0.7}}
burner_only_entity.selection_box = {{-1, -1}, {1, 1}}

burner_only_entity.animation = table.deepcopy(data.raw.furnace["stone-furnace"].animation)
burner_only_entity.working_visualisations  = table.deepcopy(data.raw.furnace["stone-furnace"].working_visualisations)
burner_only_entity.animation.layers[1].tint = color.burner
burner_only_entity.animation.layers[1].hr_version.tint = color.burner



data:extend({burner_only_entity})

