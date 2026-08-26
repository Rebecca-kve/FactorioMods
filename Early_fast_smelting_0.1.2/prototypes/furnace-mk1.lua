--furnace-t1.lua

local FasterFurnace = table.deepcopy(data.raw["furnace"]["stone-furnace"])

FasterFurnace.name = "furnace-mk1"
FasterFurnace.icons = {
	{
		icon = FasterFurnace.icon,
		tint = {r=0.6,g=0.9,b=0.6}
	},
}

FasterFurnace.crafting_speed = 48
--FasterFurnace.energy_usage = "2.16MW"
FasterFurnace.next_upgrade = "furnace-mk2"
FasterFurnace.collision_box = {{-1.7, -1.7}, {1.7, 1.7}}
FasterFurnace.selection_box = {{-2, -2}, {2, 2}}
FasterFurnace.energy_source = {
	type = "burner",
	fuel_inventory_size = 2,
	effectivity = 0.04, -- or 0.0416
	fuel_categories = {"chemical"}, 
	emissions_per_minute = 96
}
FasterFurnace.minable.result = "furnace-mk1"

FasterFurnace.animation =
{
	layers =
	{
		{
			-- Factorio 2.0 uses the high-res file directly at the root level
			filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace.png",
			tint = {r=0.6, g=0.9, b=0.6},
			priority = "extra-high",
			width = 151,
			height = 146,
			frame_count = 1,
			-- Multiplied original hr shift by 2 to keep it aligned at 4x4 scale
			shift = util.by_pixel(-0.5, 12), 
			scale = 1.0 -- 0.5 default * 2 = 1.0
		},
		{
			filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-shadow.png",
			priority = "extra-high",
			width = 164,
			height = 74,
			frame_count = 1,
			draw_as_shadow = true,
			-- Multiplied original hr shift by 2 to keep the shadow aligned
			shift = util.by_pixel(29, 26), 
			scale = 1.0 -- 0.5 default * 2 = 1.0
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
			filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
			tint = {r=0.6,g=0.9,b=0.6},
			priority = "extra-high",
			line_length = 8,
			width = 20,
			height = 49,
			frame_count = 48,
			axially_symmetrical = false,
			direction_count = 1,
			shift = util.by_pixel(-0.5, 5.5),
			hr_version =
			{
				filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-fire.png",
				tint = {r=0.6,g=0.9,b=0.6},
				priority = "extra-high",
				line_length = 8,
				width = 41,
				height = 100,
				frame_count = 48,
				axially_symmetrical = false,
				direction_count = 1,
				shift = util.by_pixel(-0.75, 5.5),
				scale = 1
			}
        },
        light = {intensity = 1, size = 1, color = {r=1.0, g=1.0, b=1.0}}
	}
}
FasterFurnace.water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/steel-furnace/steel-furnace-reflection.png",
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
			name = "furnace-mk1",
			icon = "__Early_fast_smelting__/graphics/icons/stone-furnace.png",
			icon_size = 64, icon_mipmaps = 4,
			subgroup = "smelting-machine",
			place_result = "furnace-mk1",
			stack_size = 5,
			order = "z+"
		},
		{
			type = "recipe",
			name = "furnace-mk1",
			enabled = true,
			energy_required = 30,			
			icon_size = 64, icon_mipmaps = 4,
			ingredients = {{type = "item", name = "stone-furnace", amount = 48}},			
			results = { { type = "item", name = "furnace-mk1", amount = 1 } }
		}
	}
)
