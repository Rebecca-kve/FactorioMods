data:extend({

  {
    type = "technology",
    name = "fluid-control",
	icons = {
		--{ icon = "__base__/graphics/technology/fluid-handling.png", icon_size = 256 },
		{
			icon = "__base__/graphics/icons/storage-tank.png",
			icon_size = 64,
			scale = 0.5,
			shift = { 1, -1 },
		},
		{
			icon = "__base__/graphics/icons/pump.png",
			icon_size = 64,
			scale = 0.5,
			shift = { 1, 8 },
		},
	},
    effects = {
		{type = 'unlock-recipe', recipe = 'pump' },
		{type = 'unlock-recipe', recipe = 'storage-tank' },
		{type = 'unlock-recipe', recipe = 'red-wire' },
		{type = 'unlock-recipe', recipe = 'green-wire' },
    },
    prerequisites = {"kr-basic-fluid-handling"},
    unit = {
		count = 30,
		ingredients =  {
			{"basic-tech-card", 1},
		},
		time = 15
	},
  },


})
