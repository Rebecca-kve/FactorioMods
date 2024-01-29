for _, force in pairs(game.forces) do
	if game.forces['player'].technologies['kr-basic-fluid-handling'] then
		force.recipes["burner-atmospheric-condenser"].enabled = true
		force.recipes["oxygen"].enabled = true
	end
end