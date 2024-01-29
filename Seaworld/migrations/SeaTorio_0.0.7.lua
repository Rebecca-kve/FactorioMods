for _, force in pairs(game.forces) do
	if force.technologies['kr-basic-fluid-handling'].researched then
		force.recipes["dissolver"].enabled = true
		force.recipes["stone-brick-mineral-mix"].enabled = true
		force.recipes["basic-extraction"].enabled = true
	end
end