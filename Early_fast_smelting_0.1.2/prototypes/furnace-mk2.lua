--furnace-t2.lua

local FasterFurnace = table.deepcopy(data.raw["furnace"]["steel-furnace"])

FasterFurnace.name = "furnace-mk2"
FasterFurnace.icons = {
    {
		icon = FasterFurnace.icon,
		tint = {r=0.6,g=0.9,b=0.6}
    },
}

FasterFurnace.crafting_speed = 96
--FasterFurnace.energy_usage = "4.32MW"
FasterFurnace.collision_box = {{-1.7, -1.7}, {1.7, 1.7}}
FasterFurnace.selection_box = {{-2, -2}, {2, 2}}
FasterFurnace.energy_source = {
	type = "burner",
	fuel_inventory_size = 2,
	effectivity = 0.04, -- or 0.0416
	fuel_categories = {"chemical"}, 
	emissions_per_minute = 144
}

FasterFurnace.minable.result = "furnace-mk2"

FasterFurnace.animation =
{
	layers =
	{
		{
			filename = "__base__/graphics/entity/steel-furnace/steel-furnace.png",
			tint = {r=0.6,g=0.9,b=0.6},
			priority = "high",
			width = 171,
			height = 174,
			frame_count = 1,
			shift = util.by_pixel(-1.5*2, 1.5*2),
			scale = 1.0,
			hr_version =
			{
				filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace.png",
				tint = {r=0.6,g=0.9,b=0.6},
				priority = "high",
				width = 171,
				height = 174,
				frame_count = 1,
				shift = util.by_pixel(-1.25, 2),
				scale = 1
			}
		},
		{
			filename = "__base__/graphics/entity/steel-furnace/steel-furnace-shadow.png",
			tint = {r=0.6,g=0.9,b=0.6},
			priority = "high",
			width = 277,
			height = 85,
			frame_count = 1,
			draw_as_shadow = true,
			shift = util.by_pixel(39.5 * 2, 11.5 * 2),
			scale = 1.0,
			hr_version =
			{
				filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-shadow.png",
				tint = {r=0.6,g=0.9,b=0.6},
				priority = "high",
				width = 277,
				height = 85,
				frame_count = 1,
				draw_as_shadow = true,
				shift = util.by_pixel(39.25 * 2, 11.25 * 2),
				scale = 1
			}
		}
	}
}
FasterFurnace.working_visualisations =
{
	{
		north_position = {0.0, 0.0},
		east_position = {0.0, 0.0},
		south_position = {0.0, 0.0},
		west_position = {0.0, 0.0},
		animation =
		{
			filename = "__base__/graphics/entity/steel-furnace/steel-furnace-fire.png",
			tint = {r=0.6,g=0.9,b=0.6},
			priority = "high",
			line_length = 8,
			width = 29,
			height = 40,
			frame_count = 48,
			direction_count = 1,
			shift = util.by_pixel(-0.5, 6),
			hr_version =
			{
				filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-fire.png",
				tint = {r=0.6,g=0.9,b=0.6},
				priority = "high",
				line_length = 8,
				width = 57,
				height = 81,
				frame_count = 48,
				direction_count = 1,
				shift = util.by_pixel(-0.75, 5.75),
				scale = 1
			}
		},
	light = {intensity = 1, size = 1, color = {r = 1.0, g = 1.0, b = 1.0}}
	},
		{
			north_position = {0.0, 0.0},
			east_position = {0.0, 0.0},
			south_position = {0.0, 0.0},
			west_position = {0.0, 0.0},
			effect = "flicker", -- changes alpha based on energy source light intensity
			animation =
			{
				filename = "__base__/graphics/entity/steel-furnace/steel-furnace-glow.png",
				tint = {r=0.6,g=0.9,b=0.6},
				priority = "high",
				width = 60,
				height = 43,
				frame_count = 1,
				shift = {0.03125, 0.640625},
				blend_mode = "additive"
			}
		},
	{
		north_position = {0.0, 0.0},
		east_position = {0.0, 0.0},
		south_position = {0.0, 0.0},
		west_position = {0.0, 0.0},
		effect = "flicker", -- changes alpha based on energy source light intensity
		animation =
		{
			filename = "__base__/graphics/entity/steel-furnace/steel-furnace-working.png",
			tint = {r=0.6,g=0.9,b=0.6},
			priority = "high",
			line_length = 8,
			width = 64,
			height = 74,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(0, -4.5),
			blend_mode = "additive",
			hr_version =
			{
				filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-working.png",
				tint = {r=0.6,g=0.9,b=0.6},
				priority = "high",
				line_length = 8,
				width = 128,
				height = 150,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(0, -4.25),
				blend_mode = "additive",
				scale = 1
			}
		}
	}
}
FasterFurnace.water_reflection =
{
	pictures =
	{
		filename = "__base__/graphics/entity/steel-furnace/steel-furnace-reflection.png",
		tint = {r=0.6,g=0.9,b=0.6},
		priority = "extra-high",
		width = 20,
		height = 24,
		shift = util.by_pixel(0, 45),
		variation_count = 1,
		scale = 5,
	},
	rotate = false,
	orientation_to_variation = false
}


data:extend{FasterFurnace}
data:extend(
	{
		{
			type = "item",
			name = "furnace-mk2",
			icon = "__Early_fast_smelting__/graphics/icons/steel-furnace.png",
			icon_size = 64, icon_mipmaps = 4,
			subgroup = "smelting-machine",
			place_result = "furnace-mk2",
			stack_size = 5,
			order = "z+"
		},
		{
			type = "recipe",
			name = "furnace-mk2",
			enabled = true,
			energy_required = 60,			
			ingredients = {{type = "item", name = "steel-furnace", amount = 48}},
			results = { { type = "item", name = "furnace-mk2", amount = 1 } }
		}
	}
)