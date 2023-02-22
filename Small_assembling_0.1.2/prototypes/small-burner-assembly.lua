speed_multiplier = settings.startup["small-assembling-speed"].value

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
small_burner_assembling_machine.crafting_speed = 0.5 * speed_multiplier
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

small_burner_assembling_machine.animation = {
layers = {
 {
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
small_burner_assembling_machine.working_visualisations =
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
      shift = util.by_pixel(0* 2 / 3, 2 * 2 / 3),
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
        shift = util.by_pixel(0* 2 / 3, 2 * 2 / 3),
        draw_as_glow = true,
        blend_mode = "additive",
		scale = 1 / 3,
      }
    },
  }
}

data:extend({small_burner_assembling_machine, small_burner_assembling_machine_item})

data:extend({
	{
		type = "recipe",
		name = "small-burner-assembling-machine",
		enabled = true,
		normal = {
			energy_required = 0.5,
			ingredients = {
				{type="item", name="iron-plate", amount=5},
				{type="item", name="stone-brick", amount=2},
				{type="item", name="motor", amount=1}
			},
			results= { {type="item", name="small-burner-assembling-machine", amount=1} }
		},
		expensive = {
			energy_required = 0.5,
			ingredients = {
				{type="item", name="iron-plate", amount=10},
				{type="item", name="stone-brick", amount=10},
				{type="item", name="motor", amount=2},
			},
			results= { {type="item", name="small-burner-assembling-machine", amount=1} }
		}
	}
})


end