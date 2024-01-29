--local TGlib = require("lib.TGlib")

data:extend({
	{
		type = "item-group",
		name = "seatorio",
		order = "z",
		icon = kr_technologies_icons_path .. "stone-processing.png",
		icon_size = 256, icon_mipmaps = 4,
	},
	{
		type = "item-subgroup",
		name = "seatorio-fluid",
		group = "seatorio",
		order = "a",
	},
	{
		type = "item-subgroup",
		name = "seatorio-basic",
		group = "seatorio",
		order = "b",
	},
	{
		type = "item-subgroup",
		name = "seatorio-ore",
		group = "seatorio",
		order = "c",
	},
	{
		type = "item-subgroup",
		name = "seatorio-ore-fluid",
		group = "seatorio",
		order = "d",
	},	
	{
		type = "item-subgroup",
		name = "seatorio-extraction",
		group = "seatorio",
		order = "e",
	},
	{
		type = "item-subgroup",
		name = "seatorio-building",
		group = "seatorio",
		order = "f",
	},	
	{
		type = "item-subgroup",
		name = "seatorio-inter",
		group = "seatorio",
		order = "g",
	},
})


--local dr = data.raw
--TGlib.check_set_value(dr, {"item-subgroup", "seatorio-relevantforseatorio", "group"}, "seatorio") --"logistics"
--TGlib.check_set_value(dr, {"item-subgroup", "seatorio-relevantforseatorio", "order"}, "a") --"f"
--TGlib.check_set_value(dr, {"item-with-entity-data", "locomotive", "subgroup"}, "vehicles-railway")
--TGlib.check_set_value(dr, {"item-with-entity-data", "cargo-wagon", "subgroup"}, "vehicles-railway")
--TGlib.check_set_value(dr, {"item-with-entity-data", "fluid-wagon", "subgroup"}, "vehicles-railway")
--TGlib.check_set_value(dr, {"item-with-entity-data", "artillery-wagon", "subgroup"}, "vehicles-railway")