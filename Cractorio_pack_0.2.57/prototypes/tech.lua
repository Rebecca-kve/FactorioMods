local util = require("__boblibrary__.technology-functions");

--function bobmods.lib.tech.add_prerequisite(technology, prerequisite)

-------------------ALIEN TECH--------------------------
if mods["SchallAlienLoot"] then  

function add_alien_tech(technology)
	bobmods.lib.tech.add_prerequisite(technology, "alien-technology")
	bobmods.lib.tech.add_science_pack(technology, "alien-science-pack", 1)
end

--bobs assembling
if mods["bobassembly"] then
	add_alien_tech("chemical-plant-3")
	add_alien_tech("automation-5")
	add_alien_tech("electronics-machine-3")
	add_alien_tech("centrifuge-2")
	add_alien_tech("oil-processing-3")
	if settings.startup["bobmods-assembly-burner"].value == true then
		bobmods.lib.tech.remove_prerequisite("basic-automation", "automation-science-pack")
		bobmods.lib.tech.remove_science_pack("basic-automation", "automation-science-pack")
	end
	if mods['bzzirconium'] then
		bobmods.lib.tech.remove_prerequisite("automation-3", "cermet")
		bobmods.lib.tech.add_prerequisite("automation-4", "cermet")
		--bobmods.lib.recipe.remove_ingredient("assembling-machine-3", "cermet") Used defoult setting now
	end
end



--bobs power
if mods["bobpower"] then
	add_alien_tech("bob-steam-engine-4")
	add_alien_tech("electric-pole-3")
	add_alien_tech("electric-substation-3")
	add_alien_tech("bob-oil-boiler-3")
	add_alien_tech("bob-steam-turbine-2")
	add_alien_tech("bob-nuclear-power-2")
	add_alien_tech("bob-heat-exchanger-2")
	add_alien_tech("burner-reactor-2")
	add_alien_tech("fluid-reactor-2")
	add_alien_tech("bob-boiler-4")
	add_alien_tech("fluid-generator-3")
end

if mods["Aircraft"] then
	add_alien_tech("flying-fortress")
end
if mods["HelicopterRevival"] then
	add_alien_tech("heli-technology")
end

if mods["Krastorio2"] then
	--K2 Power
	add_alien_tech("kr-advanced-solar-panel")
	add_alien_tech("kr-energy-storage")
	add_alien_tech("kr-antimatter-reactor")

	--Weapon/war bio equipment etc
	bobmods.lib.tech.add_prerequisite("alien-technology", "kr-bio-processing" )
	bobmods.lib.tech.add_science_pack("kr-creep-virus", "alien-science-pack", 1)
	bobmods.lib.tech.add_science_pack("kr-biter-virus", "alien-science-pack", 1)
	bobmods.lib.tech.add_science_pack("kr-advanced-tank", "alien-science-pack", 1)
	add_alien_tech("kr-military-5")
	bobmods.lib.tech.add_science_pack("kr-laser-artillery-turret", "alien-science-pack", 1)
	add_alien_tech("kr-energy-shield-mk4-equipment")
	bobmods.lib.tech.add_science_pack("kr-personal-laser-defense-mk4-equipment", "alien-science-pack", 1)
	add_alien_tech("kr-power-armor-mk4")
	add_alien_tech("kr-superior-exoskeleton-equipment")
	add_alien_tech("kr-imersite-night-vision-equipment")
	add_alien_tech("kr-imersite-solar-panel-equipment")
	bobmods.lib.tech.add_science_pack("kr-rocket-turret", "alien-science-pack", 1)
	add_alien_tech("kr-railgun-turret")

	--Last tier
	--add_alien_tech("kr-logistic-5")
	--add_alien_tech("kr-superior-inserters")
	--add_alien_tech("kr-electric-mining-drill-mk3")
	--add_alien_tech("kr-advanced-chemical-plant")
	--add_alien_tech("kr-automation")
end
end --end if alien science
-------------------------------------------------------

if mods['Krastorio2-more-locomotives'] then
	bobmods.lib.tech.add_prerequisite("kr-fusion-locomotive", "kr-nuclear-locomotive")
	bobmods.lib.tech.add_prerequisite("kr-antimatter-locomotive", "kr-fusion-locomotive")

	data.raw.technology["kr-nuclear-locomotive"].effects = {
		{ type = "unlock-recipe", recipe = "kr-nuclear-locomotive" },
		{ type = "unlock-recipe", recipe = "nuclear-cargo-wagon" },
		{ type = "unlock-recipe", recipe = "nuclear-fluid-wagon" },
	}
	data.raw.technology["kr-fusion-locomotive"].effects = {
		{ type = "unlock-recipe", recipe = "kr-fusion-locomotive" },
		{ type = "unlock-recipe", recipe = "fusion-cargo-wagon" },
		{ type = "unlock-recipe", recipe = "fusion-fluid-wagon" },
	}
	data.raw.technology["kr-antimatter-locomotive"].effects = {
		{ type = "unlock-recipe", recipe = "kr-antimatter-locomotive" },
		{ type = "unlock-recipe", recipe = "antimatter-cargo-wagon" },
		{ type = "unlock-recipe", recipe = "antimatter-fluid-wagon" },
	}
end