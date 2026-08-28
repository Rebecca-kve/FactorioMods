speed_multiplier = settings.startup["small-assembling-speed"].value
consumption_multiplier = settings.startup["consumption_multiplier"].value
ingredients_setting = settings.startup["small-assembling-ingredients"].value


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
small_assembling_machine_1.crafting_categories = {"small-crafting"}
--small_assembling_machine_1.ingredient_count = ingredients_setting
small_assembling_machine_1.crafting_speed = 0.5 * speed_multiplier
--small_assembling_machine_1.module_specification = { module_slots = 2}
--small_assembling_machine_1.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
small_assembling_machine_1.collision_box = {{-0.7, -0.7}, {0.7, 0.7}}
small_assembling_machine_1.selection_box = {{-1, -1}, {1, 1}}
small_assembling_machine_1.fast_replaceable_group = "small-assembling-machine"
small_assembling_machine_1.next_upgrade = "small-assembling-machine-2"
small_assembling_machine_1.energy_source.emissions_per_minute = { pollution = 4 * consumption_multiplier }
small_assembling_machine_1.energy_usage = tostring(75 * consumption_multiplier) .. "kW"

small_assembling_machine_1.graphics_set.animation = {	
    layers =
    {
      util.sprite_load("__base__/graphics/entity/assembling-machine-1/assembling-machine-1-base",
      {
        priority = "high",
        frame_count = 1,
        repeat_count = 64,
        scale = 0.33, -- Krympet fra 0.5 for å passe 2x2 flate
      }),
      util.sprite_load("__base__/graphics/entity/assembling-machine-1/assembling-machine-1-anim",
      {
        priority = "high",
        frame_count = 64,
        scale = 0.33, -- Krympet fra 0.5
      }),
      util.sprite_load("__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow",
      {
        priority = "high",
        frame_count = 1,
        repeat_count = 64,
        scale = 0.33, -- Krympet fra 0.5
		shift = {-0.5, 0},
        draw_as_shadow = true,
      }),
    }
}
small_assembling_machine_1.water_reflection = {
  	pictures =	{	
    	filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-reflection.png",
    	priority = "extra-high",
    	width = 24,
    	height = 24,
    	shift = util.by_pixel(0, 15), -- Justert ned fra (5, 40) for 2x2 flate
    	variation_count = 1,
    	scale = 1.5 -- Redusert skala for å matche mindre maskin
  	},
  	rotate = false,
  	orientation_to_variation = false
}
small_assembling_machine_1.working_visualisations =
  {
    {
      animation = util.sprite_load("__base__/graphics/entity/assembling-machine-1/assembling-machine-1-status-light",
      {
        priority = "high",
        repeat_count = 64,
        draw_as_glow = true,
        blend_mode = "additive",
        scale = 0.33, -- Krympet fra 0.5 for å matche basen
      }),
    }
  }


local small_assembling_machine_2 = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"])
small_assembling_machine_2.name = "small-assembling-machine-2"
small_assembling_machine_2.minable.result = "small-assembling-machine-2"
small_assembling_machine_2.crafting_categories = {"small-crafting"}
small_assembling_machine_2.crafting_speed = 0.75 * speed_multiplier
small_assembling_machine_2.module_specification = { module_slots = 2}
small_assembling_machine_2.module_slots = 2
small_assembling_machine_2.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
small_assembling_machine_2.icons_positioning = {
    {
        inventory_index = defines.inventory.crafter_modules,
		shift = {0, 0.5},
        scale = 0.33
    }
}
small_assembling_machine_2.collision_box = {{-0.7, -0.7}, {0.7, 0.7}}
small_assembling_machine_2.selection_box = {{-1, -1}, {1, 1}}
small_assembling_machine_2.fast_replaceable_group = "small-assembling-machine"
small_assembling_machine_2.next_upgrade = "small-assembling-machine-3"
small_assembling_machine_2.energy_source.emissions_per_minute = { pollution = 3 * consumption_multiplier }
small_assembling_machine_2.energy_usage = tostring(150 * consumption_multiplier) .. "kW"

small_assembling_machine_2.graphics_set =
  {
    animation =
    {
      layers =
      {
        util.sprite_load("__base__/graphics/entity/assembling-machine-2/assembling-machine-2-base",
        {
          priority = "high",
          repeat_count = 64,
          scale = 0.33,
        }),
        util.sprite_load("__base__/graphics/entity/assembling-machine-2/assembling-machine-2-anim",
        {
          priority = "high",
          frame_count = 64,
          scale = 0.33,
        }),
        util.sprite_load("__base__/graphics/entity/assembling-machine-2/assembling-machine-2-shadow",
        {
          priority = "high",
          repeat_count = 64,
          scale = 0.33,
		  shift = {-0.5, 0},
          draw_as_shadow = true,
        }),
      }
    },
    working_visualisations =
    {
      {
        animation = util.sprite_load("__base__/graphics/entity/assembling-machine-2/assembling-machine-2-status-light",
        {
          priority = "high",
          repeat_count = 64,
          draw_as_glow = true,
          blend_mode = "additive",
          scale = 0.33,
        }),
      }
    }
  }

local small_assembling_machine_3 = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"])
small_assembling_machine_3.name = "small-assembling-machine-3"
small_assembling_machine_3.minable.result = "small-assembling-machine-3"
small_assembling_machine_3.crafting_categories = {"small-crafting"}
small_assembling_machine_3.crafting_speed = 1.25 * speed_multiplier
small_assembling_machine_3.module_specification = { module_slots = 4}
small_assembling_machine_3.module_slots = 4
small_assembling_machine_3.allowed_effects = {"consumption", "speed", "productivity", "pollution"}

small_assembling_machine_3.icons_positioning = {
    {
        inventory_index = defines.inventory.crafter_modules,
        shift = {0, 0},
        scale = 0.33
    }
}
small_assembling_machine_3.collision_box = {{-0.7, -0.7}, {0.7, 0.7}}
small_assembling_machine_3.selection_box = {{-1, -1}, {1, 1}}
small_assembling_machine_3.fast_replaceable_group = "small-assembling-machine"
small_assembling_machine_3.next_upgrade = nil
small_assembling_machine_3.energy_source.emissions_per_minute = { pollution = 2  * consumption_multiplier }
small_assembling_machine_3.energy_usage = tostring(375 * consumption_multiplier) .. "kW"
small_assembling_machine_3.graphics_set =
  {
    animation_progress = 0.5,
    animation =
    {
      layers =
      {
        util.sprite_load("__base__/graphics/entity/assembling-machine-3/assembling-machine-3-base",
        {
          priority = "high",
          repeat_count = 64,
          scale = 0.33,
        }),
        util.sprite_load("__base__/graphics/entity/assembling-machine-3/assembling-machine-3-anim",
        {
          priority = "high",
          frame_count = 64,
          scale = 0.33,
        }),
        util.sprite_load("__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow",
        {
          priority = "high",
          frame_count = 64,
          scale = 0.33,
		  shift = {-0.5, 0},
          draw_as_shadow = true,
        }),
      }
    },
    working_visualisations =
    {
      {
        animation = util.sprite_load("__base__/graphics/entity/assembling-machine-3/assembling-machine-3-status-light",
        {
          priority = "high",
          repeat_count = 64,
          draw_as_glow = true,
          blend_mode = "additive",
          scale = 0.33,
        }),
      }
    }
  }

data:extend({small_assembling_machine_1, small_assembling_machine_2, small_assembling_machine_3})



data:extend({
	{
		type = "recipe",
		name = "small-assembling-machine-1",
		icons = small_assembling_machine_1_item.icons,
		normal = {
			enabled = false,
			energy_required = 0.5,
			ingredients = {
				{"iron-gear-wheel", 5},
				{"copper-cable", 10},
				{"iron-plate", 9},
			},
			results= { {type="item", name="small-assembling-machine-1", amount=1} }
		},
		expensive = {
			enabled = false,
			energy_required = 0.5,
			ingredients = {
				{"iron-gear-wheel", 10},
				{"copper-cable", 20},
				{"iron-plate", 18},
			},
			results= { {type="item", name="small-assembling-machine-1", amount=1} }
		}
    },
	{
		type = "recipe",
		name = "small-assembling-machine-2",
		icons = small_assembling_machine_2_item.icons,
		normal = {
			enabled = false,
			energy_required = 0.5,
			ingredients = {
				{"steel-plate", 2},
				{"electronic-circuit", 3},
				{"small-assembling-machine-1", 1},
			},
			results= { {type="item", name="small-assembling-machine-2", amount=1} }
		},
		expensive = {
			enabled = false,
			ingredients = {
				{"steel-plate", 4},
				{"electronic-circuit", 6},
				{"small-assembling-machine-1", 1},
			},
			results= { {type="item", name="small-assembling-machine-2", amount=1} }
		}
		
    },
	{
		type = "recipe",
		name = "small-assembling-machine-3",
		icons = small_assembling_machine_3_item.icons,
		categories = { "crafting-with-fluid" },
		normal = {
			enabled = false,
			energy_required = 0.5,
			ingredients = {
				{type = "fluid", name = "lubricant", amount = 100},
				{"advanced-circuit", 10},
				{"small-assembling-machine-2", 1},
			},
			results= { {type="item", name="small-assembling-machine-3", amount=1} }
		},
		expensive = {
			enabled = false,
			energy_required = 0.5,
			ingredients = {
				{type = "fluid", name = "lubricant", amount = 200},
				{"advanced-circuit", 20},
				{"small-assembling-machine-2", 1},
			},
			results= { {type="item", name="small-assembling-machine-3", amount=1} }
		}
    },
})

