
-- Add an effect to a given technology
function add_effect(technology_name, effect)
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

-- Add an effect to a given technology to unlock recipe
function add_unlock(technology_name, recipe)
  add_effect(technology_name, {type="unlock-recipe", recipe=recipe})
end

add_unlock("automation-2", "small-assembling-machine-2" )
add_unlock("automation-3", "small-assembling-machine-3" )