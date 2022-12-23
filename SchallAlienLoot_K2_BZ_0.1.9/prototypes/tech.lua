if mods["Krastorio2"] then
data:extend({
	{
		type = "technology",
		name = "kr-matter-alien-processing",
		icon_size = 256,
		icon_mipmaps = 4,
		icon = "__SchallAlienLoot_K2_BZ__/graphics/matter-alien.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "alien-ore-1-to-matter"
			},
			{
				type = "unlock-recipe",
				recipe = "matter-to-alien-ore-1"
			},
			{
				type = "unlock-recipe",
				recipe = "alien-ore-2-to-matter"
			},
			{
				type = "unlock-recipe",
				recipe = "matter-to-alien-ore-2"
			},
			{
				type = "unlock-recipe",
				recipe = "alien-ore-3-to-matter"
			},
			{
				type = "unlock-recipe",
				recipe = "matter-to-alien-ore-3"
			},
			{
				type = "unlock-recipe",
				recipe = "alien-artifact-to-matter"
			},
			{
				type = "unlock-recipe",
				recipe = "matter-to-alien-artifact"
			},
		},
		prerequisites = {"kr-matter-processing", "alien-technology"},
		unit = {
			count = 350,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ "matter-tech-card", 1 },
				{ "alien-science-pack", 2},
			},
			time = 45
		},
	},
})
end