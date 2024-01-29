for _, force in pairs(game.forces) do
	if force.technologies["fluid-handling"].researched then
		force.recipes["big-water-pump"].enabled = true
	end
end
