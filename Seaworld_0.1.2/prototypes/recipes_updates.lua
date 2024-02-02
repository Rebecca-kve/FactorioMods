--local Recipe = require('__stdlib__/stdlib/data/recipe')
local tech_util = require("__boblibrary__.technology-functions");
local recipe_util = require("__boblibrary__.recipe-functions");

function add_recipe_to_start(technology, recipe)
  --Recipe(recipe):remove_unlock(technology)
  bobmods.lib.tech.remove_recipe_unlock(technology, recipe)
  data.raw.recipe[recipe].enabled = true
end

--add a wood to coal in fuel refin

add_recipe_to_start("kr-fluids-chemistry", "kr-filtration-plant")
add_recipe_to_start("kr-fluids-chemistry", "chemical-plant")
add_recipe_to_start("kr-enriched-ores", "dirty-water-filtration-1")
add_recipe_to_start("kr-enriched-ores", "dirty-water-filtration-2")
add_recipe_to_start("coal-liquefaction", "coal-filtration")

-- dirty water buff
if settings.startup["dirty-water-buff"].value == true then
  bobmods.lib.recipe.set_result("dirty-water-filtration-1", { type = "item", name = "iron-ore", amount = 2 })
  bobmods.lib.recipe.set_result("dirty-water-filtration-2", { type = "item", name = "copper-ore", amount = 2 })
  bobmods.lib.recipe.set_result("dirty-water-filtration-3", { type = "item", name = "raw-rare-metals", amount = 1 })
  
  else
  bobmods.lib.recipe.set_result("dirty-water-filtration-stone", { type = "item", name = "stone", amount = 1 })
end

--early buildings
bobmods.lib.recipe.replace_ingredient("kr-filtration-plant", "steel-beam", "iron-beam")
bobmods.lib.recipe.replace_ingredient("kr-filtration-plant", "engine-unit", "pipe")
--bobmods.lib.recipe.replace_ingredient("kr-filtration-plant", "glass", "stone-brick")
bobmods.lib.recipe.replace_ingredient("kr-greenhouse", "glass", "stone-brick")

--early valve
bobmods.lib.recipe.remove_ingredient("overflow-valve", "electronic-circuit")
bobmods.lib.recipe.remove_ingredient("underflow-valve", "electronic-circuit")

data.raw.recipe["chemical-plant"].ingredients = {
  { "iron-beam", 4 },
  { "iron-gear-wheel", 5 },
  { "automation-core", 5 },
  { "pipe", 5 },
}

--add recipes to teck
bobmods.lib.tech.add_recipe_unlock("kr-stone-processing", "sand-dirty-water-production")
bobmods.lib.tech.add_recipe_unlock("kr-mineral-water-gathering", "mineral-water-production")
bobmods.lib.tech.add_recipe_unlock("fluid-handling", "pyrolysis")
bobmods.lib.tech.add_recipe_unlock("oil-processing", "crude-oil-production")