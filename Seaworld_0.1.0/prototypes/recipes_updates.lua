function remove_recipe_effect(technology_name, recipe_name)
  local technology = data.raw.technology[technology_name]
  local index = -1
  local cnt = 0
  if technology and technology.effects then
      for i, effect in pairs(technology.effects) do
          if effect.type == "unlock-recipe" and effect.recipe == recipe_name then
              index = i
              cnt = cnt + 1
          end
      end
      if index > -1 then
          table.remove(technology.effects, index)
          if cnt > 1 then -- not over yet, do it again
              remove_recipe_effect(technology_name, recipe_name)
          end
      end
  end
end

function add_tech_start(old_technology, recipe_start)
	remove_recipe_effect(old_technology, recipe_start)
	data.raw.recipe[recipe_start].enabled = true
end

add_tech_start("kr-fluids-chemistry", "kr-filtration-plant")
add_tech_start("kr-fluids-chemistry", "chemical-plant")
add_tech_start("kr-enriched-ores", "dirty-water-filtration-1")
add_tech_start("kr-enriched-ores", "dirty-water-filtration-2")
add_tech_start("coal-liquefaction", "coal-filtration")

data.raw.recipe["dirty-water-filtration-1"].results = {
  { type = "fluid", name = "water", amount = 100 },
  { type = "item", name = "stone", probability = 0.30, amount = 1 },
  { type = "item", name = "iron-ore", amount = 1 },
}
data.raw.recipe["dirty-water-filtration-2"].results = {
  { type = "fluid", name = "water", amount = 100 },
  { type = "item", name = "stone", probability = 0.30, amount = 1 },
  { type = "item", name = "copper-ore", amount = 1 },
}
data.raw.recipe["dirty-water-filtration-3"].results = {
  { type = "fluid", name = "water", amount = 100 },
  { type = "item", name = "stone", probability = 0.30, amount = 1 },
  { type = "item", name = "raw-rare-metals", probability = 0.5, amount = 1 },
}


data.raw.recipe["kr-greenhouse"].ingredients = {
    { "wood", 20 },
    { "iron-beam", 10 },
    { "stone-brick", 20 },
    { "pipe", 2 },
  }

  data.raw.recipe["kr-filtration-plant"].ingredients = {
    { "iron-beam", 10 },
    { "pipe", 3 },
    { "stone-brick", 10 },
    { "burner-mining-drill", 4 },
  }

  data.raw.recipe["chemical-plant"].ingredients = {
    { "iron-beam", 4 },
    { "iron-gear-wheel", 5 },
    { "stone-brick", 3 },
    { "pipe", 5 },
  }