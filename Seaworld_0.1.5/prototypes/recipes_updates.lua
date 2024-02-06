--local Recipe = require('__stdlib__/stdlib/data/recipe')
local tech_util = require("__boblibrary__.technology-functions");
local recipe_util = require("__boblibrary__.recipe-functions");

local dirtywaterbuff = settings.startup["dirty-water-buff"].value


--remove from the tech and enable from start
function add_recipe_to_start(technology, recipe)
  --Recipe(recipe):remove_unlock(technology)
  bobmods.lib.tech.remove_recipe_unlock(technology, recipe)
  data.raw.recipe[recipe].enabled = true
end

--move buildings to early game
add_recipe_to_start("kr-fluids-chemistry", "kr-filtration-plant")
add_recipe_to_start("kr-fluids-chemistry", "chemical-plant")
add_recipe_to_start("coal-liquefaction", "coal-filtration")


--make buildings craftable with early game resources
bobmods.lib.recipe.replace_ingredient("kr-filtration-plant", "steel-beam", "iron-beam")
bobmods.lib.recipe.replace_ingredient("kr-filtration-plant", "engine-unit", "pipe")
bobmods.lib.recipe.replace_ingredient("kr-greenhouse", "glass", "stone-brick")
bobmods.lib.recipe.remove_ingredient("overflow-valve", "electronic-circuit")
bobmods.lib.recipe.remove_ingredient("underflow-valve", "electronic-circuit")
data.raw.recipe["chemical-plant"].ingredients = {
  { "iron-beam", 4 },
  { "iron-gear-wheel", 5 },
  { "automation-core", 5 },
  { "pipe", 5 },
}

--More landfill
if settings.startup["more-landfill"].value == true then
for _, recipe in pairs(data.raw.recipe) do
    if recipe.result == "landfill" then
        if recipe.result_count then
            recipe.result_count = recipe.result_count * 5
        else
            -- If result_count is not specified, assume it's 1 and multiply by 5
            recipe.result_count = 5
        end
    end
end
end

--add recipes to teck
bobmods.lib.tech.add_recipe_unlock("kr-stone-processing", "sand-dirty-water-production")
bobmods.lib.tech.add_recipe_unlock("kr-mineral-water-gathering", "mineral-water-production")
bobmods.lib.tech.add_recipe_unlock("fluid-handling", "pyrolysis")
bobmods.lib.tech.add_recipe_unlock("oil-processing", "crude-oil-production")


----------------------------DIRTY Water Stuff ------------------

--more dirty water
data.raw.recipe["coal-filtration"].results = {
      { type = "item", name = "coal", amount = 8 },
      { type = "fluid", name = "dirty-water", amount = 40 },
}

-- dirty water buff
if dirtywaterbuff > 1 then
  -- Iterate over all recipes
  for _, recipe in pairs(data.raw["recipe"]) do
    -- Check if the recipe name starts with "dirty-water-filtration"
    if string.find(recipe.name, "^dirty%-water%-filtration") then
        -- Check if there are at least three results
        if #recipe.results >= 3 then
            -- Get the third result
            local third_result = recipe.results[3]

            -- Store the original amount
            local original_amount = third_result.amount

            -- Multiply the probability of the third result by 20
            third_result.probability = third_result.probability * dirtywaterbuff

            -- Adjust the amount if probability is over 100%
            if third_result.probability > 1 then
                third_result.amount = original_amount * third_result.probability
                third_result.probability = 1
            end
        end
    end
  end  
end

-- search for dirty water recipes and unlock them

for _, recipe_data in pairs(data.raw["recipe"]) do
    -- Check if the recipe name starts with "dirty-water-filtration"
    if string.find(recipe_data.name, "^dirty%-water%-filtration") then
        -- Find the technology name that unlocks the recipe
        local unlocking_tech_name = nil
        for _, tech_data in pairs(data.raw["technology"]) do
            if tech_data.effects then
                for _, effect_data in ipairs(tech_data.effects) do
                    if effect_data.type == "unlock-recipe" and effect_data.recipe == recipe_data.name then
                        unlocking_tech_name = tech_data.name
                        break
                    end
                end
            end
            if unlocking_tech_name then
                break
            end
        end

        -- If the unlocking technology name is found, remove the recipe from it and enable it from the start
        if unlocking_tech_name then
            add_recipe_to_start(unlocking_tech_name, recipe_data.name)
        end
    end
end

