local matter = require("__Krastorio2__/lib/public/data-stages/matter-util")
local util = require('__bzaluminum__.data-util')
--local data_util = require("data-util")

matter.removeMatterRecipe("wood")
matter.removeMatterRecipe("quartz")

if krastorio.general.getSafeSettingValue("kr-rebalance-fuels") then 
	data.raw.item["wood"].fuel_value = "2MJ"
end

local mineral_mix_matter = {
    item_name = "mineral-mix",
    minimum_conversion_quantity = 100,
    matter_value = 30,
    energy_required = 3,
    need_stabilizer = false,
	only_conversion = true,
    --unlocked_by_technology = "mineral-mix-matter-processing"
	unlocked_by_technology = "kr-matter-processing"
}
matter.createMatterRecipe(mineral_mix_matter)

local seatorio_wood = {
    item_name = "wood",
    minimum_conversion_quantity = 10,
    matter_value = 2,
    energy_required = 1,
    need_stabilizer = false,
	only_deconversion = true,
	unlocked_by_technology = "kr-matter-processing",
}
matter.createMatterRecipe(seatorio_wood)


------------------- Changes to BZ:
--This mod will benefit from early game fluid handling
util.remove_ingredient("pump", "graphite")
util.remove_ingredient("pump", "engine-unit")
util.remove_ingredient("pump", "steel-plate")
util.add_ingredient("pump", "iron-beam", 3)
util.add_ingredient("pump", "copper-cable", 5)
util.add_ingredient("pump", "lead-plate", 5)
util.replace_ingredient("red-wire", "optical-fiber", "copper-cable")
util.replace_ingredient("green-wire", "optical-fiber", "copper-cable")
util.replace_ingredient("red-wire", "automation-core", "aluminum-cable")
util.replace_ingredient("green-wire", "automation-core", "aluminum-cable")
util.remove_ingredient("chemical-plant", "tungsten-plate")
util.remove_ingredient("chemical-plant", "tungsten-carbide")
util.add_ingredient("chemical-plant", "glass", 10)

--Disable for tutorial???
data.raw.recipe["iron-chest"].enabled = false
data.raw.recipe["iron-stick"].enabled = false
data.raw.recipe["stone-brick"].enabled = false

data.raw.recipe["small-electric-pole"].enabled = false
data.raw.recipe["repair-pack"].enabled = false

data.raw.recipe["burner-inserter"].enabled = false
data.raw.recipe["transport-belt"].enabled = false

--data.raw.recipe["lead-chest"].enabled = false
--k2
data.raw.recipe["iron-beam"].enabled = false
data.raw.recipe["rare-metals"].enabled = false

--New tech to unlock fluid handling early
util.remove_recipe_effect("fluid-handling", "storage-tank" )
util.remove_recipe_effect("fluid-handling", "pump" )
util.remove_recipe_effect("circuit-network", "red-wire" )
util.remove_recipe_effect("circuit-network", "green-wire")
data.raw.technology["fluid-handling"].icons = {
	{
		icon_size = 128,
		icon = "__SeaTorio__/graphics/icons/barrels.png",
	},
}

if mods['aai-industry'] then
	util.add_effect("fluid-control", { type = "unlock-recipe", recipe = "pump" })
	--util.add_prerequisite("kr-logistic", "basic-tech-card-crafted")--why does it not work?
	if settings.startup["aai-fuel-processor"].value == true then
		util.add_prerequisite("fuel-processing", "basic-tech-card-crafted")
	end
	replace_tech("big-water-pump", "engine", "fluid-handling" )
	util.remove_ingredient("concrete", "zircon")
	util.remove_ingredient("concrete", "iron-stick") --New ingredient is alredy added by bz
end


if mods["Flow Control"] then  --Needed as k2 try to putt pipes in basic-fluid
	replace_tech("pipe-junction", "flow_control_valves_tech","kr-basic-fluid-handling")
	replace_tech("pipe-elbow", "flow_control_valves_tech", "kr-basic-fluid-handling")
	replace_tech("pipe-straight", "flow_control_valves_tech","kr-basic-fluid-handling")
end

--Offshore P.U.M.P.S. and ground water
if mods["P-U-M-P-S"] then
	util.remove_recipe_effect("fluid-handling", "offshore-pump-1")
	util.add_effect("kr-basic-fluid-handling", { type = "unlock-recipe", recipe = "offshore-pump-1" })
	data.raw["offshore-pump"]["slow-offshore-pump"].pumping_speed = 2
	util.replace_ingredient("offshore-pump-2", "advanced-circuit", "automation-core")
end

---------------------------------
--[[
data:extend({
	{
		type = "technology",
		name = "mineral-mix-matter-processing",
		icons = {
			{ icon =  kr_technologies_icons_path .. "matter-oil.png", icon_size = 256, },
			{ icon = "__SeaTorio__/graphics/mineral-mix.png", icon_size = 64, scale = 1.4, }
		},
		effects = {
			{ type = "unlock-recipe", recipe = "mineral-mix-to-matter" },
		},
		prerequisites = {"kr-matter-processing"},
		unit = {
			count = 350,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ "matter-tech-card", 1 },
			},
			time = 45
		},
	},
})
]]