for _, force in pairs(game.forces) do
	if force.technologies['automation-2'].researched then
		force.recipes["aluminum-ore-production"].enabled = true
		force.recipes["lead-ore-production"].enabled = true
		force.recipes["iron-ore-production"].enabled = true
		force.recipes["copper-ore-production"].enabled = true
	end
end