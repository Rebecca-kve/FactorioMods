
data:extend({

-- Remember to add a ash rescipe
-- wood to ash furn
-- or water from steam

	---------NESSESARY STUFF
    {
        type = "recipe",
		name = "dirty-water-production",
        energy_required = 0.5,
		enabled = true,
        ingredients = {
			{type = "fluid", name = "water", amount = 100},
			{type = "item", name = "SW-ash", amount = 10}
        },
		results = {
			{type = "fluid", name = "dirty-water", amount = 100}
		},
		icon = kr_fluids_icons_path .. "dirty-water.png",
		icon_size = 64,
		category = "chemistry",
		order = "a[dirty-water-production]",
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
		name = "salt-from-water",
        energy_required = 0.4,
		enabled = true,
        ingredients = {
			{type = "fluid", name = "water", amount = 100}
        },
		results = {
			{type = "item", name = "salt",  amount = 1},
		},
		icon = "__salt__/graphics/icons/salt.png",
		icon_size = 64,
		category = "fluid-filtration",
		order = "a[sand-from-water]",
		subgroup = "seatorio-basic"
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
		result = "SW-ash"
	},
	


	-- handcraft only
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
    },

})