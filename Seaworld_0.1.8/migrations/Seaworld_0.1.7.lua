for _, force in pairs(game.forces) do
	if force.technologies['sulfur-processing'].researched then
		force.recipes["dirty-water-filtration-uranium-ore"].enabled = true
	end
	if force.technologies['kr-quarry-minerals-extraction'].researched and not mods["space-exploration"] then
		force.recipes["dirty-water-filtration-raw-imersite"].enabled = true
	end
end