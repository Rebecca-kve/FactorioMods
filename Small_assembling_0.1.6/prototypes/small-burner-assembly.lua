speed_multiplier = settings.startup["small-assembling-speed"].value
consumption_multiplier = settings.startup["consumption_multiplier"].value
ingredients_setting = settings.startup["small-assembling-ingredients"].value

if not mods['aai-industry'] then
	return
end


local small_burner_assembling_machine_item = util.table.deepcopy(data.raw["item"]["assembling-machine-1"])
small_burner_assembling_machine_item.order = "[0]small-assembling-machine"
small_burner_assembling_machine_item.name = "small-burner-assembling-machine"
small_burner_assembling_machine_item.place_result = "small-burner-assembling-machine"
small_burner_assembling_machine_item.icons = {
	{ icon = "__Small_assembling__/prototypes/blank.png", icon_size = 64 },
	{
		icon = "__aai-industry__/graphics/icons/burner-assembling-machine.png",
		icon_size = 64,
		scale = 0.4,
	},
}

local small_burner_assembling_machine = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"])
small_burner_assembling_machine.name = "small-burner-assembling-machine"
small_burner_assembling_machine.minable.result = "small-burner-assembling-machine"
small_burner_assembling_machine.ingredient_count = ingredients_setting
small_burner_assembling_machine.crafting_categories = {"small-crafting"}
small_burner_assembling_machine.crafting_speed = 0.5 * speed_multiplier
small_burner_assembling_machine.collision_box = {{-0.7, -0.7}, {0.7, 0.7}}
small_burner_assembling_machine.selection_box = {{-1, -1}, {1, 1}}
small_burner_assembling_machine.fast_replaceable_group = "small-assembling-machine"
small_burner_assembling_machine.next_upgrade = "small-assembling-machine-1"
--small_burner_assembling_machine.crafting_categories = {"crafting", "basic-crafting"}
small_burner_assembling_machine.energy_source = {
  type = "burner",
  fuel_categories = {"chemical", data.raw["fuel-category"]["processed-chemical"] and "processed-chemical"},
  effectivity = 0.9 / consumption_multiplier,
  fuel_inventory_size = 1,
  emissions_per_minute = { pollution = 4 * consumption_multiplier },
  light_flicker =
  {
    minimum_light_size = 1,
    light_intensity_to_size_coefficient = 0.2,
    color = {1,0.6,0},
    minimum_intensity = 0.05,
    maximum_intensity = 0.2
  },
  smoke =
  {
    {
      name = "smoke",
      deviation = {0.1, 0.1},
      position = {0.5, -1.5},
      frequency = 3
    }
  }
}

small_burner_assembling_machine.graphics_set.animation = {
  layers = {
    {
      filename = "__aai-industry__/graphics/entity/burner-assembling-machine/burner-assembling-machine.png",
      priority="high",
      width = 214,
      height = 226,
      frame_count = 32,
      line_length = 8,
      shift = util.by_pixel(0, 2*2/3),
      scale = 0.33
    },
    {
      draw_as_shadow = true,
      filename = "__aai-industry__/graphics/entity/burner-assembling-machine/burner-assembling-machine-shadow.png",
      height = 165,
      line_length = 1,
      priority = "high",
      repeat_count = 32,
      scale = 0.33,
      shift = util.by_pixel(8.5*2/3, 5*2/3),
      width = 190
    }
  }
}
small_burner_assembling_machine.graphics_set.working_visualisations =
{
  {
    draw_as_glow = true,
    fadeout = true,
    animation =
    {
      filename = "__aai-industry__/graphics/entity/burner-assembling-machine/burner-assembling-machine-light.png",
      priority = "high",
      width = 214,
      height = 226,
      frame_count = 1,
      animation_speed = 1,
      shift = util.by_pixel(0, 2*2/3),
      scale = 0.33,
      draw_as_glow = true,
      blend_mode = "additive",
    }
  },
}

data:extend({small_burner_assembling_machine, small_burner_assembling_machine_item})

data:extend({
	{
		type = "recipe",
		name = "small-burner-assembling-machine",
		icons = small_burner_assembling_machine_item.icons,
		normal = {
			enabled = true,
			energy_required = 0.5,
			ingredients = {
				{type="item", name="iron-plate", amount=5},
				{type="item", name="stone-brick", amount=2},
				{type="item", name="motor", amount=1}
			},
			results= { {type="item", name="small-burner-assembling-machine", amount=1} }
		},
		expensive = {
			enabled = true,
			energy_required = 0.5,
			ingredients = {
				{type="item", name="iron-plate", amount=10},
				{type="item", name="stone-brick", amount=10},
				{type="item", name="motor", amount=2},
			},
			results= { {type="item", name="small-burner-assembling-machine", amount=1} }
		}
	},
	{
		type = "recipe",
		name = "small-assembling-machine-1",
		icons = {
			{ icon = "__Small_assembling__/prototypes/blank.png", icon_size = 64 }, {
				icon = "__base__/graphics/icons/assembling-machine-1.png",
				icon_size = 64,
				scale = 0.4,
			},
		},
		normal = {
			enabled = false,
			energy_required = 0.5,
			ingredients = {
				{"iron-gear-wheel", 5},
				{"copper-cable", 10},
				{"small-burner-assembling-machine", 1},
			},
			results= { {type="item", name="small-assembling-machine-1", amount=1} }
		},
		expensive = {
			enabled = false,
			energy_required = 0.5,
			ingredients = {
				{"iron-gear-wheel", 10},
				{"copper-cable", 20},
				{"small-burner-assembling-machine", 1},
			},
			results= { {type="item", name="small-assembling-machine-1", amount=1} }
		}
    },
})