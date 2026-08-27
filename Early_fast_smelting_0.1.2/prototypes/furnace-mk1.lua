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
FasterFurnace.next_upgrade = "furnace-mk2"
FasterFurnace.collision_box = {{-1.7, -1.7}, {1.7, 1.7}}
FasterFurnace.selection_box = {{-2, -2}, {2, 2}}
FasterFurnace.energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 0.02,
      fuel_inventory_size = 2,
      emissions_per_minute = { pollution = 2*48 },
      light_flicker =
      {
        color = {0,0,0},
        minimum_intensity = 0.6,
        maximum_intensity = 0.95
      },
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1*2, 0.1*2},
          frequency = 5,
          position = {0.0, -0.8*2},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
	  }
	}
FasterFurnace.minable.result = "furnace-mk1"



FasterFurnace.graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/stone-furnace/stone-furnace.png",
            priority = "extra-high",
            width = 151,
            height = 146,
            shift = util.by_pixel(-0.25*2, 6*2),
            scale = 1
          },
          {
            filename = "__base__/graphics/entity/stone-furnace/stone-furnace-shadow.png",
            priority = "extra-high",
            width = 164,
            height = 74,
            draw_as_shadow = true,
            shift = util.by_pixel(14.5*2, 13*2),
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
            layers =
            {
              {
                filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
                priority = "extra-high",
                line_length = 8,
                width = 41,
                height = 100,
                frame_count = 48,
                draw_as_glow = true,
                shift = util.by_pixel(-0.75*2, 5.5*2),
                scale = 1
              },
              {
                filename = "__base__/graphics/entity/stone-furnace/stone-furnace-light.png",
                blend_mode = "additive",
                width = 106,
                height = 144,
                repeat_count = 48,
                draw_as_glow = true,
                shift = util.by_pixel(0, 5*2),
                scale = 1,
              },
            }
          }
        },
        {
          fadeout = true,
          effect = "flicker",
          animation =
          {
            filename = "__base__/graphics/entity/stone-furnace/stone-furnace-ground-light.png",
            blend_mode = "additive",
            width = 116,
            height = 110,
            repeat_count = 48,
            draw_as_light = true,
            shift = util.by_pixel(-1*2, 44*2),
            scale = 1,
          },
        },
      },
      water_reflection =
      {
        pictures =
        {
          filename = "__base__/graphics/entity/stone-furnace/stone-furnace-reflection.png",
          priority = "extra-high",
          width = 16,
          height = 16,
          shift = util.by_pixel(0, 35*2),
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
