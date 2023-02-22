
local small_assembling_machine_1_item = util.table.deepcopy(data.raw["item"]["assembling-machine-1"])
small_assembling_machine_1_item.order = "[1]small-assembling-machine"
small_assembling_machine_1_item.name = "small-assembling-machine-1"
small_assembling_machine_1_item.place_result = "small-assembling-machine-1"
small_assembling_machine_1_item.icons = {
	{ icon = "__Small_assembling__/prototypes/blank.png", icon_size = 64 },
	{
		icon = "__base__/graphics/icons/assembling-machine-1.png",
		icon_size = 64,
		scale = 0.4,
	},
}


local small_assembling_machine_2_item = util.table.deepcopy(data.raw["item"]["assembling-machine-2"])
small_assembling_machine_2_item.order = "[2]small-assembling-machine"
small_assembling_machine_2_item.name = "small-assembling-machine-2"
small_assembling_machine_2_item.place_result = "small-assembling-machine-2"
small_assembling_machine_2_item.icons = {
	{ icon = "__Small_assembling__/prototypes/blank.png", icon_size = 64 },
	{
		icon = "__base__/graphics/icons/assembling-machine-2.png",
		icon_size = 64,
		scale = 0.4,
	},
}

local small_assembling_machine_3_item = util.table.deepcopy(data.raw["item"]["assembling-machine-1"])
small_assembling_machine_3_item.order = "[3]small-assembling-machine"
small_assembling_machine_3_item.name = "small-assembling-machine-3"
small_assembling_machine_3_item.place_result = "small-assembling-machine-3"
small_assembling_machine_3_item.icons = {
	{ icon = "__Small_assembling__/prototypes/blank.png", icon_size = 64 },
	{
		icon = "__base__/graphics/icons/assembling-machine-3.png",
		icon_size = 64,
		scale = 0.4,
	},
}

data:extend({small_assembling_machine_1_item, small_assembling_machine_2_item, small_assembling_machine_3_item})

local small_assembling_machine_1 = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"])
small_assembling_machine_1.name = "small-assembling-machine-1"
small_assembling_machine_1.minable.result = "small-assembling-machine-1"
small_assembling_machine_1.ingredient_count = 1
small_assembling_machine_1.crafting_speed = 0.5
--small_assembling_machine_1.module_specification = { module_slots = 2}
--small_assembling_machine_1.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
small_assembling_machine_1.collision_box = {{-0.7, -0.7}, {0.7, 0.7}}
small_assembling_machine_1.selection_box = {{-1, -1}, {1, 1}}
small_assembling_machine_1.fast_replaceable_group = "small-assembling-machine"
small_assembling_machine_1.next_upgrade = "small-assembling-machine-2"

small_assembling_machine_1.animation = {
	layers = {
        {
			filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
			priority="high",
			width = 108,
			height = 114,
			frame_count = 32,
			line_length = 8,
			shift = util.by_pixel(0, 2),
			scale = 2/3,
			hr_version = {
				filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png",
				priority="high",
				width = 214,
				height = 226,
				frame_count = 32,
				line_length = 8,
				shift = util.by_pixel(0, 2),
				scale = 1/3,
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
			shift = util.by_pixel(8.5, 5.5),
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
				shift = util.by_pixel(8.5, 5),
				scale = 1/3
			}
		}
	}
}

local small_assembling_machine_2 = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"])
small_assembling_machine_2.name = "small-assembling-machine-2"
small_assembling_machine_2.minable.result = "small-assembling-machine-2"
small_assembling_machine_2.ingredient_count = 1
small_assembling_machine_2.crafting_speed = 0.75
small_assembling_machine_2.module_specification = { module_slots = 2}
small_assembling_machine_2.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
small_assembling_machine_2.collision_box = {{-0.7, -0.7}, {0.7, 0.7}}
small_assembling_machine_2.selection_box = {{-1, -1}, {1, 1}}
small_assembling_machine_2.fast_replaceable_group = "small-assembling-machine"
small_assembling_machine_2.next_upgrade = "small-assembling-machine-3"
small_assembling_machine_2.energy_source.emissions_per_minute = 3
small_assembling_machine_2.energy_usage = "150kW"

small_assembling_machine_2.animation = {
	layers = {
        {
			filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2.png",
			priority = "high",
			width = 108,
			height = 110,
			frame_count = 32,
			line_length = 8,
			shift = util.by_pixel(0, 4),
			scale = 2/3,
			hr_version = {
				filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2.png",
				priority = "high",
				width = 214,
				height = 218,
				frame_count = 32,
				line_length = 8,
				shift = util.by_pixel(0, 4),
				scale = 1/3,
			}
        },
        {
			filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-shadow.png",
			priority = "high",
			width = 98,
			height = 82,
			frame_count = 32,
			line_length = 8,
			draw_as_shadow = true,
			shift = util.by_pixel(12, 5),
			scale = 2/3,
			hr_version = {
				filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-shadow.png",
				priority = "high",
				width = 196,
				height = 163,
				frame_count = 32,
				line_length = 8,
				draw_as_shadow = true,
				shift = util.by_pixel(12, 4.75),
				scale = 1/3
			}
		}
	}
}

local small_assembling_machine_3 = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"])
small_assembling_machine_3.name = "small-assembling-machine-3"
small_assembling_machine_3.minable.result = "small-assembling-machine-3"
small_assembling_machine_3.ingredient_count = 1
small_assembling_machine_3.crafting_speed = 1.25
small_assembling_machine_3.module_specification = { module_slots = 4}
small_assembling_machine_3.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
small_assembling_machine_3.collision_box = {{-0.7, -0.7}, {0.7, 0.7}}
small_assembling_machine_3.selection_box = {{-1, -1}, {1, 1}}
small_assembling_machine_3.fast_replaceable_group = "small-assembling-machine"
small_assembling_machine_3.next_upgrade = nil
small_assembling_machine_3.energy_source.emissions_per_minute = 2
small_assembling_machine_3.energy_usage = "375kW"
small_assembling_machine_3.animation = {
	layers = {
        {
			filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3.png",
			priority = "high",
			width = 108,
			height = 119,
			frame_count = 32,
			line_length = 8,
			shift = util.by_pixel(0, -0.5),
			scale = 2/3,
			hr_version = {
				filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3.png",
				priority = "high",
				width = 214,
				height = 237,
				frame_count = 32,
				line_length = 8,
				shift = util.by_pixel(0, -0.75),
				scale = 1/3,
			}
        },
        {
			filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
			priority = "high",
			width = 130,
			height = 82,
			frame_count = 32,
			line_length = 8,
			draw_as_shadow = true,
			shift = util.by_pixel(28, 4),
			scale = 2/3,
			hr_version = {
				filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-shadow.png",
				priority = "high",
				width = 260,
				height = 162,
				frame_count = 32,
				line_length = 8,
				draw_as_shadow = true,
				shift = util.by_pixel(28, 4),
				scale = 1/3
			}
		}
	}
}

data:extend({small_assembling_machine_1, small_assembling_machine_2, small_assembling_machine_3})



data:extend({
	{
		type = "recipe",
		name = "small-assembling-machine-1",
        energy_required = 0.5,
		enabled = true,
        ingredients = {
			{"iron-gear-wheel", 5},
			{"copper-cable", 10},
			{"iron-plate", 9},
        },
		result = "small-assembling-machine-1",
    },
	{
		type = "recipe",
		name = "small-assembling-machine-2",
        energy_required = 0.5,
		enabled = false,
        ingredients = {
			{"steel-plate", 2},
			{"electronic-circuit", 3},
			{"small-assembling-machine-1", 1},
        },
		result = "small-assembling-machine-2",
    },
	{
		type = "recipe",
		name = "small-assembling-machine-3",
        energy_required = 0.5,
		enabled = false,
		category = "crafting-with-fluid",
        ingredients = {
			{type = "fluid", name = "lubricant", amount = 100},
			{"advanced-circuit", 10},
			{"small-assembling-machine-2", 1},
        },
		result = "small-assembling-machine-3",
    },
})

