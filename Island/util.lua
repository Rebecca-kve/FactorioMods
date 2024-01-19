function util.remove_recipe_effect(technology_name, recipe_name)
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
                util.remove_recipe_effect(technology_name, recipe_name)
            end
        end
    end
end

-- Add an effect to a given technology
function util.add_effect(technology_name, effect)
  local technology = data.raw.technology[technology_name]
  if technology then
    if not technology.effects then technology.effects = {} end
    if effect and effect.type == "unlock-recipe" then
      if not data.raw.recipe[effect.recipe] then
        return
      end
      table.insert(technology.effects, effect)
    end
  end
end


-- Add a prerequisite to a given technology
function util.add_prerequisite(technology_name, prerequisite)
  local technology = data.raw.technology[technology_name]
  if technology and data.raw.technology[prerequisite] then
    if technology.prerequisites then
      for i, pre in pairs(technology.prerequisites) do
        if pre == prerequisite then return end
      end
      table.insert(technology.prerequisites, prerequisite)
    else
      technology.prerequisites = {prerequisite}
    end
  end
end

-- Remove a prerequisite from a given technology
function util.remove_prerequisite(technology_name, prerequisite)
  local technology = data.raw.technology[technology_name]
  local index = -1
  if technology then
    for i, prereq in pairs(technology.prerequisites) do
      if prereq == prerequisite then
        index = i
        break
      end
    end
    if index > -1 then
      table.remove(technology.prerequisites, index)
    end
  end
end


function remove_ingredient(recipe, old)
  index = -1
	if recipe ~= nil and recipe.ingredients ~= nil then
		for i, ingredient in pairs(recipe.ingredients) do 
      if ingredient.name == old or ingredient[1] == old then
        index = i
        break
      end
    end
    if index > -1 then
      table.remove(recipe.ingredients, index)
    end
  end
end