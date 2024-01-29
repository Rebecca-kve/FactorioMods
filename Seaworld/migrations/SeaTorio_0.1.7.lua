for _, force in pairs(game.forces) do
	if force.technologies['kr-basic-fluid-handling'].researched then
		force.technologies["burner-chemical-plant-crafted"].researched = true
		force.technologies["stone-furnace-crafted"].researched = true
		force.technologies["basic-tech-card-crafted"].researched = true
	end
end
