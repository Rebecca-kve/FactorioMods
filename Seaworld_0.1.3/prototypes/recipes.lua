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
		order = "a[fluid]-sw[ash]",
		subgroup = "fluid-recipes",
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
		order = "a[fluid]-sw[ash]",
		subgroup = "fluid-recipes",
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
		order = "a[fluid]-sw[heavy-oil-production]",
		subgroup = "fluid-recipes",
    },

	{
        type = "recipe",
		name = "crude-oil-production",
        energy_required = 2.5,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "heavy-oil", amount = 100},
			{type = "fluid", name = "steam", amount = 50},
			{type = "item", name = "SW-ash", amount = 20},
        },
		results = {
			{type = "fluid", name = "crude-oil", amount = 100},
			{type = "fluid", name = "dirty-water", amount = 50},
		},
		icon = "__base__/graphics/icons/fluid/crude-oil.png",
		icon_size = 64,
		category = "oil-processing",
		order = "a[fluid]-sw[crude-oil-production]",
		subgroup = "fluid-recipes",
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
		order = "a[fluid]-sw[mineral-water-production]",
		subgroup = "fluid-recipes",
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
		order = "sw[ash]",
		subgroup = "raw-material",
	},
	{
		type = "recipe",
		name = "pyrolysis",
		category = "smelting",
		energy_required = 25,
		icon = "__Seaworld__/graphics/icons/pyrolysis.png",
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
		order = "sw[pyro]",
		subgroup = "raw-material",
	},
	
	-- wood buff:
  {
    type = "recipe",
    name = "SW-grow-wood-ash",
    category = "growing",
	icon = "__Seaworld__/graphics/icons/ashtowood.png",
    icon_size = 64,
    energy_required = 60,
    enabled = true,
    ingredients = {
      { type = "fluid", name = "water", amount = 200 },
	  { name = "SW-ash", amount = 10 },
    },
    result = "wood",
	order = "sw[SW-grow-wood-ash]",
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

	{
		type = "recipe",
		name = "dirty-water-filtration-stone",
		category = "fluid-filtration",
		icons = {
		  {
			icon = data.raw.fluid["dirty-water"].icon,
			icon_size = data.raw.fluid["dirty-water"].icon_size,
		  },
		  {
			icon = data.raw.item["stone"].icon,
			icon_size = data.raw.item["stone"].icon_size,
			scale = 0.20 * (data.raw.fluid["dirty-water"].icon_size / data.raw.item["stone"].icon_size),
			shift = { 0, 4 },
		  },
		},
		icon_size = data.raw.fluid["dirty-water"].icon_size,
		energy_required = 2,
		enabled = true,
		allow_as_intermediate = false,
		always_show_made_in = true,
		always_show_products = true,
		ingredients = {
		  { type = "fluid", name = "dirty-water", amount = 100 },
		},
		results = {
		  { type = "fluid", name = "water", amount = 100 },
		  { type = "item", name = "stone", amount = 3 },
		},
		crafting_machine_tint = {
		  primary = { r = 0.49, g = 0.62, b = 0.75, a = 0.6 }, --dirty
		  secondary = { r = 0.64, g = 0.83, b = 0.93, a = 0.9 }, --clear
		},
		subgroup = "raw-material",
		order = "w010[dirty-water-filtration-stone]",
	  },

})