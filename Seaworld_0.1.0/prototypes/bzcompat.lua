

if mods["bzcarbon"] then
add_tech_start("enriched-graphite", "dirty-water-filtration-graphite")
data.raw.recipe["dirty-water-filtration-graphite"].results =
		{
			{type = "fluid", name = "water", amount = 90, catalyst_amount = 90},
			{type = "item",  name = "stone", probability = 0.30, amount = 1},
			{type = "item",  name = "flake-graphite", probability = 0.50, amount = 1},
		}
end

if mods["bzaluminum"] then
local util = require('__bzaluminum__.data-util')

add_tech_start("kr-enriched-ores", "dirty-water-filtration-aluminum")
data.raw.recipe["dirty-water-filtration-aluminum"].results =
  {
    {type = "fluid", name = "water", amount = 90, catalyst_amount = 90},
    mods.bzsilicon and util.me.byproduct() and {type = "item",  name = "silica", amount = 1} or 
    {type = "item",  name = "stone", probability = 0.40, amount = 1},
    {type = "item",  name = "aluminum-ore", amount = 1},
  }
end

--lead
--tin
--ziconium
--titanium
--tungsten