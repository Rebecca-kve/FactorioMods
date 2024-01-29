for _, force in pairs(game.forces) do
	if force.technologies["advanced-oil-processing"].researched then
		force.recipes["crude-oil-production-2"].enabled = true
	end
	if force.technologies["kr-matter-processing"].researched then
		force.recipes["matter-to-wood"].enabled = true
		force.recipes["mineral-mix-to-matter"].enabled = true
	end
end