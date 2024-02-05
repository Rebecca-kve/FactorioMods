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


local burner_beacon_item = flib_data_util.copy_prototype(data.raw["item"]["assembling-machine-1"], "SW-burner-beacon")
burner_beacon_item.order = "[1]burner-machine"
burner_beacon_item.icons = {
	{
		icon = "__base__/graphics/icons/assembling-machine-1.png",
		icon_size = 64,
		tint = color.burner
	},
	{
		icon = "__Seaworld__/graphics/icons/burner.png",
		icon_size = 64,
		scale = 0.40,
		shift = { 8, -8 },
	},
}
data:extend({burner_beacon_item})

local burner_only_entity = flib_data_util.copy_prototype(data.raw["assembling-machine"]["assembling-machine-1"], "SW-burner-beacon")
burner_only_entity.crafting_categories = {"SW-fuel-burn"}
burner_only_entity.energy_usage = "0.5MW"
burner_only_entity.energy_source = {
	type = "burner",
	fuel_categories = fuel,
	effectivity = 0.1,
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

burner_only_entity.animation = {
	layers = {
        {
			filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
			priority="high",
			width = 108,
			height = 114,
			frame_count = 32,
			line_length = 8,
			shift = util.by_pixel(0, 2 * 2 / 3),
			scale = 2/3,
			tint = color.burner,
			hr_version = {
				filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png",
				priority="high",
				width = 214,
				height = 226,
				frame_count = 32,
				line_length = 8,
				shift = util.by_pixel(0, 2 * 2 / 3),
				scale = 1/3,
				tint = color.burner,
			}
        },
        {
			filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
			priority="high",
			width = 95,
			height = 83,
			frame_count = 1,
			line_length = 1,
			repeat_count = 32,
			draw_as_shadow = true,
			shift = util.by_pixel(8.5 * 2 / 3, 5.5 * 2 / 3),
			scale = 2/3,
			hr_version = {
				filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
				priority="high",
				width = 190,
				height = 165,
				frame_count = 1,
				line_length = 1,
				repeat_count = 32,
				draw_as_shadow = true,
				shift = util.by_pixel(8.5 * 2 / 3, 5 * 2 / 3),
				scale = 1/3
			}
		}
	}
}



data:extend({burner_only_entity})

data:extend({

	{
		type = "recipe",
		enabled = true,
		energy_required = 10,
		name = "SW-burner-beacon",
        ingredients = {
			{"stone-brick", 20},
        },
		result = "SW-burner-beacon",
	},
})