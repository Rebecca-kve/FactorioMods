--local recipe_util = require("__boblibrary__.recipe-functions");

-- dirty water x10 buff
if mods["bzcarbon"] then
  add_recipe_to_start("enriched-graphite", "dirty-water-filtration-graphite")
  bobmods.lib.recipe.set_result("dirty-water-filtration-graphite", {type = "item",  name = "flake-graphite", amount = 1})
end

if mods["bzaluminum"] then
  add_recipe_to_start("kr-enriched-ores", "dirty-water-filtration-aluminum")
  bobmods.lib.recipe.set_result("dirty-water-filtration-aluminum", {type = "item",  name = "aluminum-ore", amount = 2})
end

if mods["bzlead"] then
  add_recipe_to_start("kr-enriched-ores", "dirty-water-filtration-lead")
  bobmods.lib.recipe.set_result("dirty-water-filtration-lead", {type = "item",  name = "lead-ore", amount = 5})
end

if mods["bztin"] then
  add_recipe_to_start("kr-enriched-ores", "dirty-water-filtration-tin")
  bobmods.lib.recipe.set_result("dirty-water-filtration-tin", {type = "item",  name = "tin-ore", amount = 2})
end

if mods["bzzirconium"] then
  add_recipe_to_start("kr-enriched-ores", "dirty-water-filtration-zircon")
  bobmods.lib.recipe.set_result("dirty-water-filtration-zircon", {type = "item",  name = "zircon", amount = 2})

  if mods["bztitanium"] and settings.startup["bzzirconium-byproduct"].value == true then
    bobmods.lib.recipe.set_result("dirty-water-filtration-zircon", {type = "item",  name = "titanium-ore", probability = 0.05, amount = 1})
  end
end

if mods["bztitanium"] then
  bobmods.lib.recipe.set_result("dirty-water-filtration-titanium", {type = "item",  name = "titanium-ore", amount = 1})
end

if mods["bztungsten"] then
  add_recipe_to_start("kr-enriched-ores", "dirty-water-filtration-tungsten")
  bobmods.lib.recipe.set_result("dirty-water-filtration-tungsten", {type = "item",  name = "tungsten-ore", amount = 1})
end