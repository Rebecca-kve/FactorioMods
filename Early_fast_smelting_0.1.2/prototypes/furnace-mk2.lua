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
FasterFurnace.collision_box = {{-1.7, -1.7}, {1.7, 1.7}}
FasterFurnace.selection_box = {{-2, -2}, {2, 2}}
FasterFurnace.energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 0.02,
      emissions_per_minute = { pollution = 4*48 },
      fuel_inventory_size = 2,
	  smoke =
      {
        {
          name = "smoke",
          frequency = 10,
          position = {0.7*2, -1.2*2},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    }



FasterFurnace.minable.result = "furnace-mk2"

FasterFurnace.graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/steel-furnace/steel-furnace.png",
            priority = "high",
            width = 171,
            height = 174,
            shift = util.by_pixel(-1.25*2, 2*2),
            scale = 1
          },
          {
            filename = "__base__/graphics/entity/steel-furnace/steel-furnace-shadow.png",
            priority = "high",
            width = 277,
            height = 85,
            draw_as_shadow = true,
            shift = util.by_pixel(39.25*2, 11.25*2),
            scale = 1
          }
        }
      },
      working_visualisations =
      {
        {
          fadeout = true,
          effect = "flicker",
          animation =
          {
            filename = "__base__/graphics/entity/steel-furnace/steel-furnace-fire.png",
            priority = "high",
            line_length = 8,
            width = 57,
            height = 81,
            frame_count = 48,
            draw_as_glow = true,
            shift = util.by_pixel(-0.75*2, 5.75*2),
            scale = 1
          },
        },
        {
          fadeout = true,
          effect = "flicker",
          animation =
          {
            filename = "__base__/graphics/entity/steel-furnace/steel-furnace-glow.png",
            priority = "high",
            width = 60,
            height = 43,
            draw_as_glow = true,
            shift = {0.03125*2, 0.640625*2},
            blend_mode = "additive"
          }
        },
        {
          fadeout = true,
          effect = "flicker",
          animation =
          {
            filename = "__base__/graphics/entity/steel-furnace/steel-furnace-working.png",
            priority = "high",
            line_length = 1,
            width = 128,
            height = 150,
            draw_as_glow = true,
            shift = util.by_pixel(0, -5*2),
            blend_mode = "additive",
            scale = 1,
          }
        },
        {
          fadeout = true,
          effect = "flicker",
          animation =
          {
            filename = "__base__/graphics/entity/steel-furnace/steel-furnace-ground-light.png",
            priority = "high",
            line_length = 1,
            width = 152,
            height = 126,
            draw_as_light = true,
            shift = util.by_pixel(1*2, 48*2),
            blend_mode = "additive",
            scale = 1,
          },
        },
      },
      water_reflection =
      {
        pictures =
        {
          filename = "__base__/graphics/entity/steel-furnace/steel-furnace-reflection.png",
          priority = "extra-high",
          width = 20,
          height = 24,
          shift = util.by_pixel(0, 45*2),
          variation_count = 1,
          scale = 10
        },
        rotate = false,
        orientation_to_variation = false
      }
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