for _, force in pairs(game.forces) do
	if force.technologies['sulfur-processing'].researched then
		force.recipes["refined-concrete-mineral-mix"].enabled = true
	end
	if force.technologies['concrete'].researched then
		force.recipes["concrete-mineral-mix"].enabled = true
	end
	if force.technologies['kr-silicon-processing'].researched then
		force.recipes["advanced-extraction"].enabled = true
	end
end