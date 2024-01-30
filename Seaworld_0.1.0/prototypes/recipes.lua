
data:extend({

-- Remember to add a ash rescipe
-- wood to ash furn
-- or water from steam

	---------NESSESARY STUFF
    {
        type = "recipe",
		name = "dirty-water-production",
        energy_required = 0.5,
		enabled = false,
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

	-- Make fishing instead
	--[[	{
        type = "recipe",
		name = "fish-from-water",
        energy_required = 10,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "water", amount = 500, catalyst_amount = 500}
        },
		results = {
			{type = "item", name = "raw-fish", amount_min = 3, amount_max = 7 },
			{type = "fluid", name = "water", amount = 400, catalyst_amount = 400}
		},
		icon = "__base__/graphics/icons/fish.png",
		icon_size = 64,
		category = "fluid-filtration",
		order = "b[fish-from-water]",
		subgroup = "seatorio-basic"
    },]]

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
	
})
