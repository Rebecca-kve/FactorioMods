if mods["Krastorio2"] then
--rare materials from loot
local matter = require("__Krastorio2__/lib/public/data-stages/matter-util")
	
	
	local CT_ore = settings.startup["alienloot-crafting-time-ore-morphing"].value
	local products_specs = {
		["raw-rare-metals"] = {
			orderidx = "l-a",
			icon = "__Krastorio2Assets__/icons/items-with-variations/raw-rare-metals/raw-rare-metals.png",
			energy_required = CT_ore,
			enabled = true,
			recipes = {
				{ ingredient = "alien-ore-3", amt_in = 3, amt_out = 1 },
				{ ingredient = "alien-artifact", amt_in = 2, amt_out = 5 },
			},
		},
	}
	for name, spec in pairs(products_specs) do
	SchallAlienLoot_add_morph_recipes(name, spec)
	end


--Imersite from loot

	local CT_ore = settings.startup["alienloot-crafting-time-ore-morphing"].value
	local products_specs = {
		["raw-imersite"] = {
			orderidx = "l-a",
			icon = "__Krastorio2Assets__/icons/items-with-variations/raw-imersite/raw-imersite.png",
			energy_required = CT_ore,
			enabled = true,
			recipes = {
				{ ingredient = "alien-ore-3", amt_in = 3, amt_out = 1 },
				{ ingredient = "alien-artifact", amt_in = 2, amt_out = 5 },
			},
		},
	}
	for name, spec in pairs(products_specs) do
	SchallAlienLoot_add_morph_recipes(name, spec)
	end


--mineral water from loot

	local CT_ore = settings.startup["alienloot-crafting-time-ore-morphing"].value
	local products_specs = {
		["mineral-water"] = {
			orderidx = "l-a",
			icon = "__Krastorio2Assets__/icons/fluids/mineral-water.png",
			energy_required = CT_ore,
			fluid = true,
			enabled = true,
			recipes = {
				{ ingredient = "alien-ore-1", 	amt_in = 6, amt_out = 1, penalty = {name_min = "alien-ore-2" } },
				{ ingredient = "alien-ore-2",     amt_in = 1, amt_out = 2,},
				{ ingredient = "alien-ore-3",     amt_in = 1, amt_out = 8 },
				{ ingredient = "alien-artifact",  amt_in = 1, amt_out = 20 },
			},
		},
	}
	for name, spec in pairs(products_specs) do
	SchallAlienLoot_add_morph_recipes(name, spec)
	end
	
	
--Matter assembly from K2
krastorio.matter_func.createMatterRecipe({
	item_name = "alien-ore-1",
	minimum_conversion_quantity = 10,
	matter_value = 3.5,
	energy_required = 1,
	need_stabilizer = false,
	unlocked_by_technology = "kr-matter-alien-processing"
})
krastorio.matter_func.createMatterRecipe({
	item_name = "alien-ore-2",
	minimum_conversion_quantity = 10,
	matter_value = 5,
	energy_required = 1,
	need_stabilizer = false,
	unlocked_by_technology = "kr-matter-alien-processing"
})
krastorio.matter_func.createMatterRecipe({
	item_name = "alien-ore-3",
	minimum_conversion_quantity = 10,
	matter_value = 8,
	energy_required = 1,
	need_stabilizer = false,
	unlocked_by_technology = "kr-matter-alien-processing"
})
krastorio.matter_func.createMatterRecipe({
	item_name = "alien-artifact",
	minimum_conversion_quantity = 10,
	matter_value = 40,
	energy_required = 2,
	need_stabilizer = true,
	unlocked_by_technology = "kr-matter-alien-processing"
})

end

--bz mods from loot
if mods["bzlead"] then
	local CT_ore = settings.startup["alienloot-crafting-time-ore-morphing"].value
	local products_specs = {
		["lead-ore"] = {
			orderidx = "l-a",
			icon = "__bzlead__/graphics/icons/lead-ore.png",
			energy_required = CT_ore,
			enabled = true,
			recipes = {
				{ ingredient = "alien-ore-1", amt_in = 8, amt_out = 1, penalty = {name_min = "alien-ore-2" } },
				{ ingredient = "alien-ore-2", amt_in = 2, amt_out = 1 },
				{ ingredient = "alien-ore-3", amt_in = 1, amt_out = 1 },
				{ ingredient = "alien-artifact", amt_in = 1, amt_out = 5 },
			},
		},
	}
	for name, spec in pairs(products_specs) do
	SchallAlienLoot_add_morph_recipes(name, spec)
	end
end

if mods["bztitanium"] then
	local CT_ore = settings.startup["alienloot-crafting-time-ore-morphing"].value
	local products_specs = {
		["titanium-ore"] = {
			orderidx = "l-b",
			icon = "__bztitanium__/graphics/icons/titanium-ore.png",
			energy_required = CT_ore,
			enabled = true,
			recipes = {
				{ ingredient = "alien-ore-2", amt_in = 2, amt_out = 1 },
				{ ingredient = "alien-ore-3", amt_in = 1, amt_out = 1 },
				{ ingredient = "alien-artifact", amt_in = 1, amt_out = 5 },
			},
		},
	}
	for name, spec in pairs(products_specs) do
	SchallAlienLoot_add_morph_recipes(name, spec)
	end
end

if mods["bztungsten"] then
	local CT_ore = settings.startup["alienloot-crafting-time-ore-morphing"].value
	local products_specs = {
		["tungsten-ore"] = {
			orderidx = "l-b",
			icon = "__bztungsten__/graphics/icons/tungsten-ore.png",
			energy_required = CT_ore,
			enabled = true,
			recipes = {
				{ ingredient = "alien-ore-2", amt_in = 2, amt_out = 1 },
				{ ingredient = "alien-ore-3", amt_in = 1, amt_out = 1 },
				{ ingredient = "alien-artifact", amt_in = 1, amt_out = 5 },
			},
		},
	}
	for name, spec in pairs(products_specs) do
	SchallAlienLoot_add_morph_recipes(name, spec)
	end
end

if mods["bzzirconium"] then
	local CT_ore = settings.startup["alienloot-crafting-time-ore-morphing"].value
	local products_specs = {
		["zircon"] = {
			orderidx = "l-b",
			icon = "__bzzirconium__/graphics/icons/zircon.png",
			energy_required = CT_ore,
			enabled = true,
			recipes = {
				{ ingredient = "alien-ore-1", amt_in = 8, amt_out = 1, penalty = {name_min = "alien-ore-2" } },
				{ ingredient = "alien-ore-2", amt_in = 2, amt_out = 2 },
				{ ingredient = "alien-ore-3", amt_in = 1, amt_out = 2 },
				{ ingredient = "alien-artifact", amt_in = 1, amt_out = 5 },
			},
		},
	}
	for name, spec in pairs(products_specs) do
	SchallAlienLoot_add_morph_recipes(name, spec)
	end
end

if mods["bzcarbon"] then
	local CT_ore = settings.startup["alienloot-crafting-time-ore-morphing"].value
	local products_specs = {
		["flake-graphite"] = {
			orderidx = "l-b",
			icon = "__bzcarbon__/graphics/icons/flake-graphite.png",
			energy_required = CT_ore,
			enabled = true,
			recipes = {
				{ ingredient = "alien-ore-1", amt_in = 10, amt_out = 1, penalty = {name_min = "alien-ore-2" } },
				{ ingredient = "alien-ore-2", amt_in = 2, amt_out = 1 },
				{ ingredient = "alien-ore-3", amt_in = 1, amt_out = 1 },
				{ ingredient = "alien-artifact", amt_in = 1, amt_out = 5 },
			},
		},
	}
	for name, spec in pairs(products_specs) do
	SchallAlienLoot_add_morph_recipes(name, spec)
	end
end

if mods["bzaluminum"] then
	local CT_ore = settings.startup["alienloot-crafting-time-ore-morphing"].value
	local products_specs = {
		["aluminum-ore"] = {
			orderidx = "l-b",
			icon = "__bzaluminum__/graphics/icons/aluminum-ore.png",
			energy_required = CT_ore,
			enabled = true,
			recipes = {
				{ ingredient = "alien-ore-1", amt_in = 2, amt_out = 1 },
				{ ingredient = "alien-ore-2", amt_in = 1, amt_out = 1 },
				{ ingredient = "alien-ore-3", amt_in = 1, amt_out = 2 },
				{ ingredient = "alien-artifact", amt_in = 1, amt_out = 5 },
			},
		},
	}
	for name, spec in pairs(products_specs) do
	SchallAlienLoot_add_morph_recipes(name, spec)
	end
end

if mods["bzgas"] then
	local CT_ore = settings.startup["alienloot-crafting-time-ore-morphing"].value
	local products_specs = {
		["gas"] = {
			orderidx = "l-a",
			icon = "__bzgas__/graphics/icons/gas.png",
			energy_required = CT_ore,
			fluid = true,
			enabled = true,
			recipes = {
				{ ingredient = "alien-ore-2",     amt_in = 1, amt_out = 2, penalty = {name_min = "alien-ore-3" } },
				{ ingredient = "alien-ore-3",     amt_in = 1, amt_out = 8 },
				{ ingredient = "alien-artifact",  amt_in = 1, amt_out = 20 },
			},
		},
	}
	for name, spec in pairs(products_specs) do
	SchallAlienLoot_add_morph_recipes(name, spec)
	end
end

if mods["bztin"] then
	local CT_ore = settings.startup["alienloot-crafting-time-ore-morphing"].value
	local products_specs = {
		["tin-ore"] = {
			orderidx = "l-b",
			icon = "__bztin__/graphics/icons/tin-ore.png",
			energy_required = CT_ore,
			enabled = true,
			recipes = {
				{ ingredient = "alien-ore-1", amt_in = 2, amt_out = 1 },
				{ ingredient = "alien-ore-2", amt_in = 1, amt_out = 1 },
				{ ingredient = "alien-ore-3", amt_in = 1, amt_out = 2 },
				{ ingredient = "alien-artifact", amt_in = 1, amt_out = 5 },
			},
		},
	}
	for name, spec in pairs(products_specs) do
	SchallAlienLoot_add_morph_recipes(name, spec)
	end
end