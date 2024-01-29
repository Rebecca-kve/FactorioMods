for _, force in pairs(game.forces) do
	if force.technologies['kr-greenhouse'].researched then
		force.recipes["void-chemical-waste-water"].enabled = true
	end
end