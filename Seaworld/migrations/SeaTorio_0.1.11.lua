for _, force in pairs(game.forces) do
	if force.technologies["fluid-handling"].researched then
		force.recipes["big-water-pump"].enabled = true
	end
	if force.technologies["kr-gas-power-station"].researched then
		force.recipes["biomethanol"].enabled = true
	end
end
