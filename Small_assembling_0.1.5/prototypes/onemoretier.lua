--WIP
if not mods["one-more-tier"] then return end

omt_speed = settings.startup["omt-assembling-machine-speed"].value

string_energy = setting.startup["omt-assembling-machine-energy"].value
local numericValue, string_unit = string_energy:match("(%d+%.?%d*)(%a+)")

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
emmission = table.deepcopy(data.raw.furnace["omt-assembling-machine"].energy_source.emissions_per_minute * consumption_multiplier
small_omt_machine.energy_source.emissions_per_minute = emmission
small_omt_machine.energy_usage = tostring(numericValue * consumption_multiplier) .. string_unit

small_omt_machine.animation = table.deepcopy(data.raw.furnace["omt-assembling-machine"].animation)
small_omt_machine.working_visualisations  = table.deepcopy(data.raw.furnace["omt-assembling-machine"].working_visualisations)

small_omt_machine.animation.layers[1].scale = 2 / 3
small_omt_machine.animation.layers[2].scale = 1 / 3
small_omt_machine.animation.layers[1].shift = util.by_pixel(0, 2 * 2 / 3)
small_omt_machine.animation.layers[2].shift = util.by_pixel(0, 2 * 2 / 3)

small_omt_machine.working_visualisations.layers[1].scale = 2 / 3
small_omt_machine.working_visualisations.layers[2].scale = 1 / 3
small_omt_machine.working_visualisations.layers[1].shift = util.by_pixel(8.5 * 2 / 3, 5.5 * 2 / 3)
small_omt_machine.working_visualisations.layers[2].shift = util.by_pixel(8.5 * 2 / 3, 5 * 2 / 3)


data:extend({small_omt_machine, omt_small_sam_item})

data:extend({
	{
		type = "recipe",
		name = "omt-assembling-machine",
		normal = {
			enabled = true,
			energy_required = 0.5,
			ingredients = {
				{"steel-plate", 10},
				{"iron-gear-wheel", 10},
				{"speed-module-2", 2},
				{"small-assembling-machine-3", 1},
				{type="fluid", name="lubricant", amount=50},
			},
			results= { {type="item", name="omt-assembling-machine", amount=1} }
		},
		expensive = {
			enabled = true,
			energy_required = 0.5,
			ingredients = {
				{"steel-plate", 20},
				{"iron-gear-wheel", 20},
				{"speed-module-2", 4},
				{"small-assembling-machine-3", 1},
				{type="fluid", name="lubricant", amount=100},
			},
			results= { {type="item", name="omt-assembling-machine", amount=1} }
		}
	},

})

add_unlock("omt-automation-4", "omt-small-assembling-machine" )