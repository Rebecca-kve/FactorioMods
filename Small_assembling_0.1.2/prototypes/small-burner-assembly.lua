if mods['aai-industry'] then

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
small_burner_assembling_machine.ingredient_count = 1
small_burner_assembling_machine.crafting_speed = 0.5 * small-assembling-speed
small_burner_assembling_machine.collision_box = {{-0.7, -0.7}, {0.7, 0.7}}
small_burner_assembling_machine.selection_box = {{-1, -1}, {1, 1}}
small_burner_assembling_machine.fast_replaceable_group = "small-assembling-machine"
small_burner_assembling_machine.next_upgrade = "small-assembling-machine-1"
small_burner_assembling_machine.crafting_categories = {"crafting", "basic-crafting"}
small_burner_assembling_machine.energy_source = {
  type = "burner",
  fuel_categories = {"chemical", data.raw["fuel-category"]["processed-chemical"] and "processed-chemical"},
  effectivity = 0.9,
  fuel_inventory_size = 1,
  emissions_per_minute = 4,
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

burner_assembling_machine.animation.layers[1] = {
  filename = "__aai-industry__/graphics/entity/burner-assembling-machine/burner-assembling-machine.png",
  priority="high",
  width = 107,
  height = 113,
  frame_count = 32,
  line_length = 8,
  shift = util.by_pixel(0, 2 * 2 / 3),
  scale = 2 / 3,
  hr_version = {
    filename = "__aai-industry__/graphics/entity/burner-assembling-machine/hr-burner-assembling-machine.png",
    priority="high",
    width = 214,
    height = 226,
    frame_count = 32,
    line_length = 8,
    shift = util.by_pixel(0, 2 * 2 / 3),
    scale = 1 / 3
  }
}
burner_assembling_machine.working_visualisations =
{
  {
    draw_as_glow = true,
    fadeout = true,
    animation =
    {
      filename = "__aai-industry__/graphics/entity/burner-assembling-machine/burner-assembling-machine-light.png",
      priority = "high",
      width = 214/2,
      height = 226/2,
      frame_count = 1,
      animation_speed = 1,
      shift = util.by_pixel(8.5 * 2 / 3, 5.5 * 2 / 3),
      draw_as_glow = true,
      blend_mode = "additive",
	  scale = 2 / 3,
      hr_version = {
        filename = "__aai-industry__/graphics/entity/burner-assembling-machine/hr-burner-assembling-machine-light.png",
        priority = "high",
        width = 214,
        height = 226,
        frame_count = 1,
        animation_speed = 1,
        shift = util.by_pixel(8.5 * 2 / 3, 5.5 * 2 / 3),
        scale = 0.5,
        draw_as_glow = true,
        blend_mode = "additive",
		scale = 1 / 3,
      }
    }
  },
}

data:extend({small-burner-assembling-machine})

data:extend({
	{
		type = "recipe",
		name = "small-burner-assembling-machine",
        energy_required = 0.5,
		enabled = true,
        ingredients = {
			{"iron-gear-wheel", 3},
			{"iron-plate", 5},
        },
		result = "small-burner-assembling-machine",
    },
})


end