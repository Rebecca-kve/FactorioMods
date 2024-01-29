--local fuel = {"chemical"}
--if mods["Krastorio2"] then table.insert(fuel, "vehicle-fuel", "chemical") end

data:extend({

  {
    type = "custom-input",
    name = "st_enter_ship",
    key_sequence = "CONTROL + RETURN",
    consuming = "none"
  },
  
-- copy from mods.factorio.com/mod/Ships
	{
		type = "car",
		name = "basic-ship",
		icon = "__SeaTorio__/graphics/icons/ship.png",
		icon_size = 32,
		--flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
		flags = {"player-creation", "placeable-off-grid"},
		minable = {mining_time = 10, result = "basic-ship"},
		max_health = 2000,
		corpse = "big-remnants",
		dying_explosion = "big-explosion",
		energy_per_hit_point = 0.5,
		resistances =
		{
			{
				type = "fire",
				decrease = 15,
				percent = 80
			},
			{
				type = "physical",
				decrease = 5,
				percent = 10
			},
			{
				type = "impact",
				decrease = 50,
				percent = 80
			},
			{
				type = "acid",
				decrease = 6,
				percent = 20
			}
		},
		collision_box = {{-1.35, -3.1}, {1.35, 3.1}},
		selection_box = {{-1.35, -3.1}, {1.35, 3.1}},
		drawing_box = {{-1.35, -3.1}, {1.35, 3.1}},
		collision_mask = {'ground-tile', 'object-layer'},
		effectivity = 0.85,
		braking_power = "400kW",
		burner =
		{
			fuel_category = {"chemical"},
			effectivity = 0.85,
			fuel_inventory_size = 6,
			smoke =
			{
				{
					name = "tank-smoke",
					deviation = {0.55, 0.55},
					frequency = 20,
					position = {0, 2.5},
					starting_frame = 0,
					starting_frame_deviation = 60
				}
			}
		},
		consumption = "5200kW",
		terrain_friction_modifier = 0.1,
		friction = 0.001,
		light =
		{
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2.5,
					width = 200,
					height = 200
				},
				shift = {-0.8, -14},
				size = 2,
				intensity = 0.6
			},
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {0.8, -14},
				size = 2.5,
				intensity = 0.6
			}
		},
		animation =
		{
			layers =
			{
				{
					width = 360,
					height = 249,
					frame_count = 1,
					direction_count = 72,
					shift = {-0.0, -0.58125},
					animation_speed = 8,
					max_advance = 1,
					scale = 1.5,
					stripes =
					{
						{
						 filename = "__SeaTorio__/graphics/entity/shipQ1.png",
						 width_in_frames = 3,
						 height_in_frames = 6,
						},

						{
						 filename = "__SeaTorio__/graphics/entity/shipQ2.png",
						 width_in_frames = 3,
						 height_in_frames = 6,
						},

						{
						 filename = "__SeaTorio__/graphics/entity/shipQ3.png",
						 width_in_frames = 3,
						 height_in_frames = 6,
						},

						{
						 filename = "__SeaTorio__/graphics/entity/shipQ4.png",
						 width_in_frames = 3,
						 height_in_frames = 6,
						}
					}
				}
			}
		},
		--[[  --Battleship???
		turret_animation =
		{
			layers =
			{
				{
          filename = "__base__/graphics/entity/tank/tank-turret.png",
          priority = "low",
          line_length = 8,
          width = 90,
          height = 67,
          frame_count = 1,
          direction_count = 64,
					shift = {-0.15625, -1.07812},
					animation_speed = 8,
				},
				{
          filename = "__base__/graphics/entity/tank/tank-turret-mask.png",
          priority = "low",
          line_length = 8,
          width = 36,
          height = 33,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
					shift = {-0.15625, -1.23438},
				},
				{
          filename = "__base__/graphics/entity/tank/tank-turret-shadow.png",
          priority = "low",
          line_length = 8,
          width = 97,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
					shift = {1.70312, 0.640625},
				}
			}
		},
		]]
		turret_rotation_speed = 0.35 / 60,
		turret_return_timeout = 300,
		stop_trigger_speed = 0.2,
		sound_no_fuel =
		{
			{
				filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
				volume = 0.6
			},
		},
		stop_trigger =
		{
			{
				type = "play-sound",
				sound =
				{
					{
						filename = "__base__/sound/car-breaks.ogg",
						volume = 0.6
					},
				}
			},
		},
		sound_minimum_speed = 0.12;
		vehicle_impact_sound =	{ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.9 },
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/steam-engine-90bpm.ogg",
				volume = 0.5
			},
			activate_sound =
			{
				filename = "__base__/sound/fight/tank-engine-start.ogg",
				volume = 0.4
			},
			deactivate_sound =
			{
				filename = "__base__/sound/fight/tank-engine-stop.ogg",
				volume = 0.4
			},
			match_speed_to_activity = true,
		},
		open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.4 },
		close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.4 },
		rotation_speed = 0.0013,
		tank_driving = true,
		weight = 160000,
		inventory_size = 180,
		guns = {},
	},

	{
		type = "item",
		name = "basic-ship",
		icon = "__SeaTorio__/graphics/icons/ship.png",
		icon_size = 32,
		--flags = {"goes-to-quickbar"},
		subgroup = "transport",
		order = "b[personal-transport]-b[car]",
		place_result = "basic-ship",
		stack_size = 1
	},
})

data:extend({
	{
		type = "recipe",
		name = "basic-ship",
		enabled = true,
		category = "crafting",
		energy_required = 120,
		ingredients =
			{
				{"wood",400},
				{"iron-gear-wheel",10},
				{"stone-brick",10},
				{"lead-plate",50}
			},
		result = "basic-ship"
	},

})

---Copyed from mods.factorio.com/mod/cargo-ships
local st_tile_test_item = table.deepcopy(data.raw["simple-entity-with-force"]["simple-entity-with-force"])
st_tile_test_item.name = "st_tile_test_item"
st_tile_test_item.collision_mask = {"object-layer", "train-layer", "player-layer"}
st_tile_test_item.collsion_box = {{-4,-4.2},{4,4.2}}
st_tile_test_item.selection_box = {{-4,-4.2},{4,4.2}}

local st_tile_player_test_item = table.deepcopy(data.raw["simple-entity-with-force"]["simple-entity-with-force"])
st_tile_player_test_item.name = "st_tile_player_test_item"
st_tile_player_test_item.collision_mask = {"water-tile", "player-layer"}
st_tile_player_test_item.collsion_box = {{-1,-1.2},{1,1.2}}

data:extend({
  st_tile_test_item,
  st_tile_player_test_item,
  {
    type = "item",
    name = "st_tile_test_item",
    icon = "__SeaTorio__/graphics/icons/blank.png",
    icon_size = 1,
    flags = {"hidden"},
    place_result = "st_tile_test_item",
    stack_size = 1,
  },
  {
    type = "item",
    name = "st_tile_player_test_item",
    icon = "__SeaTorio__/graphics/icons/blank.png",
    icon_size = 1,
    flags = {"hidden"},
    place_result = "st_tile_player_test_item",
    stack_size = 1,
  }
})