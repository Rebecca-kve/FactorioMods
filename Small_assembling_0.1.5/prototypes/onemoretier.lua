if not mods["one-more-tier"] then return end

omt_speed = settings.startup["omt-assembling-machine-speed"].value

local omt_small_sam_item = util.table.deepcopy(data.raw["item"]["omt-assembling-machine"])
omt_small_sam_item.order = "[4]small-assembling-machine"
omt_small_sam_item.name = "omt-small-assembling-machine"
omt_small_sam_item.place_result = "omt-small-assembling-machine"
omt_small_sam_item.icons = {
	{ icon = "__Small_assembling__/prototypes/blank.png", icon_size = 64 },
	{
		icon = "__one-more-tier__/graphics/icons/assembling-machine-3.png",
		icon_size = 64,
		scale = 0.4,
	},
}

local small_omt_machine = util.table.deepcopy(data.raw["assembling-machine"]["omt-assembling-machine"])
small_omt_machine.name = "omt-small-assembling-machine"
small_omt_machine.minable.result = "omt-small-assembling-machine"
small_omt_machine.ingredient_count = ingredients_setting
small_omt_machine.crafting_speed = omt_speed * speed_multiplier
small_omt_machine.collision_box = {{-0.7, -0.7}, {0.7, 0.7}}
small_omt_machine.selection_box = {{-1, -1}, {1, 1}}
small_omt_machine.fast_replaceable_group = "small-assembling-machine"
small_omt_machine.next_upgrade = nil
small_assembling_machine_3.next_upgrade = "omt-small-assembling-machine"
small_omt_machine.crafting_categories = {"crafting", "basic-crafting"}


--not done
small_omt_machine.energy_source.emissions_per_minute = 2  * consumption_multiplier
small_omt_machine.energy_usage = tostring(375 * consumption_multiplier) .. "kW"

small_omt_machine.animation = {
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
small_omt_machine.working_visualisations =
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

data:extend({small_omt_machine, omt_small_sam_item})

data:extend({
	{
		type = "recipe",
		name = "small-burner-assembling-machine",
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

add_unlock("omt-automation-4", "omt-small-assembling-machine" )