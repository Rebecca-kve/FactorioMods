local enableDirtyWaterBuff = settings.startup["dirty-water-buff"].value

if mods["BrassTacks"] then
    add_recipe_to_start("kr-enriched-ores", "dirty-water-filtration-zinc")
    if enableDirtyWaterBuff then
    bobmods.lib.recipe.set_result("dirty-water-filtration-zinc", {type = "item",  name = "zinc-ore", amount = 2}) end
end

if mods["IfNickel"] then
    add_recipe_to_start("kr-enriched-ores", "dirty-water-filtration-nickel")
    if enableDirtyWaterBuff then
    bobmods.lib.recipe.set_result("dirty-water-filtration-nickel", {type = "item",  name = "nickel-ore", amount = 2}) end
end

if mods["BrimStuff"] then
    add_recipe_to_start("basic-chemistry", "basic-chemical-plant")
end