data:extend({

-- Remember to add a ash rescipe
-- wood to ash furn
-- or water from steam

	---------NESSESARY STUFF
    {
        type = "recipe",
		name = "ash-dirty-water-production",
        energy_required = 2.5,
		enabled = true,
        ingredients = {
			{type = "fluid", name = "water", amount = 500},
			{type = "item", name = "SW-ash", amount = 50}
        },
		results = {
			{type = "fluid", name = "dirty-water", amount = 500}
		},
		icon = kr_fluids_icons_path .. "dirty-water.png",
		icon_size = 64,
		category = "chemistry",
		order = "a[ash-dirty-water-production]",
		subgroup = "seatorio-fluid"
    },
	{
        type = "recipe",
		name = "sand-dirty-water-production",
        energy_required = 2.5,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "water", amount = 500},
			{type = "item", name = "sand", amount = 50}
        },
		results = {
			{type = "fluid", name = "dirty-water", amount = 500}
		},
		icon = kr_fluids_icons_path .. "dirty-water.png",
		icon_size = 64,
		category = "chemistry",
		order = "a[sand-dirty-water-production]",
		subgroup = "seatorio-fluid"
    },

	{
        type = "recipe",
		name = "heavy-oil-production",
        energy_required = 2.5,
		enabled = true,
        ingredients = {
			{type = "fluid", name = "steam", amount = 50},
			{type = "item", name = "SW-ash", amount = 3},
			{type = "item", name = "raw-fish", amount = 3}
        },
		results = {
			{type = "fluid", name = "heavy-oil", amount = 120}
		},
		icon = "__base__/graphics/icons/fluid/heavy-oil.png",
		icon_size = 64,
		category = "chemistry",
		order = "a[heavy-oil-production]",
		subgroup = "seatorio-fluid"
    },

	{
        type = "recipe",
		name = "crude-oil-production",
        energy_required = 3,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "heavy-oil", amount = 100},
			{type = "item", name = "SW-ash", amount = 20},
        },
		results = {
			{type = "fluid", name = "crude-oil", amount = 100}
		},
		icon = "__base__/graphics/icons/fluid/crude-oil.png",
		icon_size = 64,
		category = "oil-processing",
		order = "b[crude-oil-production]",
		subgroup = "seatorio-fluid"
    },
	
	{
        type = "recipe",
		name = "mineral-water-production",
        energy_required = 3,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "water", amount = 100},
			{type = "item", name = "salt", amount = 5},
			{type = "item", name = "sulfur", amount = 5}
        },
		results = {
			{type = "fluid", name = "mineral-water", amount = 100}
		},
		icon = kr_fluids_icons_path .. "mineral-water.png",
		icon_size = 64,
		category = "chemistry",
		order = "c[mineral-water-production]",
		subgroup = "seatorio-fluid"
    },


	--Furnace
	{
		type = "recipe",
		name = "ash",
		category = "smelting",
		energy_required = 2,
		enabled = true,
		ingredients = {{"wood", 1}},
		result = "SW-ash",
		order = "a[ash]",
		subgroup = "seatorio-inter",
	},
	{
		type = "recipe",
		name = "pyrolysis",
		category = "smelting",
		energy_required = 25,
		icon = "__base__/graphics/icons/coal.png",
        icon_size = 64,
		enabled = false,
        ingredients = {
			{ "wood", 50 },
			{ "empty-barrel", 1 }
		},
		results = {
			{type = "item", name = "coal", amount = 50},
			{type = "item", name = "empty-barrel", amount = 1, probability=0.50}
		},
		order = "c[pyro]",
		subgroup = "seatorio-inter",
	},
	
	-- wood buff:
  {
    type = "recipe",
    name = "SW-grow-wood-ash",
    category = "growing",
    energy_required = 60,
    enabled = true,
    ingredients = {
      { type = "fluid", name = "water", amount = 200 },
	  { name = "SW-ash", amount = 1 },
    },
    result = "wood",
    result_count = 60,
  },


	--[[handcraft only
	{
		type = "recipe-category",
		name = "crafting-handonly",
	},
	{
        type = "recipe",
		name = "SW-iron-ore",
        energy_required = 0.5,
		enabled = true,
        ingredients = {
			{type = "item", name = "stone", amount = 3}
        },
		results = {
			{type = "item", name = "iron-ore",  amount = 1},
		},
		icon = "__base__/graphics/icons/iron-ore.png",
		icon_size = 64,
		category = "crafting-handonly",
		order = "a[iron-ore]",
		subgroup = "seatorio-basic"
    },
	{
        type = "recipe",
		name = "SW-copper-ore",
        energy_required = 0.5,
		enabled = true,
        ingredients = {
			{type = "item", name = "stone", amount = 3}
        },
		results = {
			{type = "item", name = "copper-ore",  amount = 1},
		},
		icon = "__base__/graphics/icons/copper-ore.png",
		icon_size = 64,
		category = "crafting-handonly",
		order = "a[iron-ore]",
		subgroup = "seatorio-basic"
    },]]

})