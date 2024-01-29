local util = require('__bzaluminum__.data-util');
local fluid = require("__Krastorio2__/lib/public/data-stages/fluid-burner-util");
fluid.addBurnFluidEmissionsMultiplier("chemical-waste-water", 15.0)
--util.remove_recipe_effect(technology_name, recipe_name)
--util.add_prerequisite(technology_name, prerequisite)
--util.remove_prerequisite(technology_name, prerequisite)
function add_tech_start(old_technology, recipe_start)
	util.remove_recipe_effect(old_technology, recipe_start)
	data.raw.recipe[recipe_start].enabled = true
end
--add_tech_start("", "")
function replace_tech(recipe_name, new_tech, old_tech)
	util.remove_recipe_effect(old_tech, recipe_name)
	util.add_effect(new_tech, { type = "unlock-recipe", recipe = recipe_name })
end
--replace_tech("", "", "")
--{ type = "unlock-recipe", recipe = "burner-atmospheric-condenser" }

---------NEW START TECH

util.remove_recipe_effect("kr-enriched-ores", "dirty-water-filtration-1")
add_tech_start( "kr-greenhouse", "kr-grow-wood-with-water")
util.remove_recipe_effect("kr-enriched-ores", "dirty-water-filtration-aluminum")
util.remove_recipe_effect("kr-enriched-ores", "dirty-water-filtration-lead")
util.remove_recipe_effect("kr-enriched-ores", "dirty-water-filtration-zircon")
util.remove_product("dirty-water-filtration-zircon", "titanium-ore")
util.remove_product("dirty-water-filtration-lead", "copper-ore")

util.remove_recipe_effect("kr-logistic", "transport-belt")
util.remove_recipe_effect("kr-basic-fluid-handling", "pipe")
add_tech_start("landfill", "landfill")

---------NEW RECIPES
util.add_effect("kr-fluids-chemistry", { type = "unlock-recipe", recipe = "rare-metals" })
util.add_effect("graphite-processing", { type = "unlock-recipe", recipe = "flake-graphite-extraction" })
util.add_effect("kr-steam-engine", { type = "unlock-recipe", recipe = "coal-filtration" })
util.add_effect("kr-steam-engine", { type = "unlock-recipe", recipe = "heavy-oil-production" })
util.add_effect("kr-greenhouse", { type = "unlock-recipe", recipe = "void-chemical-waste-water" })
util.add_effect("kr-fluids-chemistry", { type = "unlock-recipe", recipe = "raw-rare-metals-extraction" })
util.add_effect("sulfur-processing", { type = "unlock-recipe", recipe = "uranium-extraction" })
util.add_effect("kr-mineral-water-gathering", { type = "unlock-recipe", recipe = "wolframite-extraction" })
util.add_effect("kr-mineral-water-gathering", { type = "unlock-recipe", recipe = "mineral-water-production" })
util.add_effect("lubricant", { type = "unlock-recipe", recipe = "titanium-extraction" })
util.add_effect("oil-processing", { type = "unlock-recipe", recipe = "crude-oil-production" })
util.add_effect("kr-quarry-minerals-extraction", { type = "unlock-recipe", recipe = "raw-imersite-production" })
util.add_effect("kr-reinforced-plates", { type = "unlock-recipe", recipe = "Stone-from-black-reinforced-plate" })
util.add_effect("kr-reinforced-plates", { type = "unlock-recipe", recipe = "Stone-from-white-reinforced-plate" })
util.add_effect("advanced-oil-processing", { type = "unlock-recipe", recipe = "crude-oil-production-2" })
util.add_effect("fluid-handling", { type = "unlock-recipe", recipe = "big-water-pump" })


--Tutorioal
util.add_prerequisite("military", "basic-tech-card-crafted")
util.add_prerequisite("kr-automation-core", "basic-tech-card-crafted")
util.add_prerequisite("kr-iron-pickaxe", "basic-tech-card-crafted")


--Costom fit for other mods
if mods["Flow Control"] then
	util.remove_prerequisite("flow_control_valves_tech", "fluid-handling")
	util.add_prerequisite("flow_control_valves_tech", "kr-basic-fluid-handling")
	util.remove_ingredient("overflow-valve", "electronic-circuit")
	util.remove_ingredient("underflow-valve", "electronic-circuit")
	data.raw.technology["flow_control_valves_tech"].unit = {
		count = 30,
		ingredients =  {
			{"basic-tech-card", 1},
		},
		time = 15
	}
--"pipe-junction","pipe-elbow""pipe-straight",
end
if mods["Rich-Rocks-Requiem"] then
	util.add_effect("rrr-rich-rocks-processing", { type = "unlock-recipe", recipe = "rich-rock-production" })
end -- I want the option to disable rich rock ores to be viable.

if mods["underground-pipe-pack"] then
	util.remove_recipe_effect("advanced-underground-piping", "80-overflow-valve")
	util.remove_recipe_effect("advanced-underground-piping", "80-top-up-valve")
	util.remove_recipe_effect("advanced-underground-piping", "check-valve")
end -- Add flow controll early

--------
util.add_effect("kr-basic-fluid-handling", { type = "unlock-recipe", recipe = "burner-atmospheric-condenser" })
util.add_effect("kr-basic-fluid-handling", { type = "unlock-recipe", recipe = "dissolver" })
util.add_effect("kr-basic-fluid-handling", { type = "unlock-recipe", recipe = "stone-brick-mineral-mix" })
util.add_effect("kr-basic-fluid-handling", { type = "unlock-recipe", recipe = "basic-extraction" })
util.remove_ingredient("concrete", "iron-ore")


--------New tech requirements
replace_tech("dirty-water-filtration-tungsten", "kr-mineral-water-gathering", "kr-enriched-ores")
replace_tech("dirty-water-filtration-2", "copper-processing", "kr-enriched-ores")
replace_tech("oxygen", "kr-basic-fluid-handling", "kr-atmosphere-condensation")

--POWER - Some tweaks as SeaTorio require more power
replace_tech("biomethanol", "kr-gas-power-station", "kr-advanced-chemistry") -- Power must be available earlyer
data.raw["generator"]["kr-gas-power-station"].max_power_output = "6750KW"
data.raw["fluid"]["biomethanol"].fuel_value = "1125KJ"
data.raw["recipe"]["biomethanol"].energy_required = data.raw["recipe"]["biomethanol"].energy_required/2
data.raw["item"]["bio-fuel"].fuel_value = "20MJ"
util.remove_prerequisite("kr-bio-fuel", "kr-advanced-chemistry")
util.remove_prerequisite("kr-bio-fuel", "chemical-science-pack")
util.add_prerequisite("kr-bio-fuel", "kr-gas-power-station")
data.raw["technology"]["kr-bio-fuel"].unit = {
	count = 200,
	ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
	},
	time = 30,
}
