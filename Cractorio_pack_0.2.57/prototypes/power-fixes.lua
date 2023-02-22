if ( mods["bobpower"] and mods["Krastorio2"] and !mods["Atlas_BobK2PowerFix"]) then
--steam engine
  if settings.startup["bobmods-power-steam"].value == true then
	data.raw["generator"]["steam-engine-2"].fluid_usage_per_tick = 1 / 6
	data.raw["generator"]["steam-engine-3"].fluid_usage_per_tick = 1 / 6
	data.raw["generator"]["steam-engine-4"].fluid_usage_per_tick = 1 / 6
	data.raw["generator"]["steam-engine-5"].fluid_usage_per_tick = 1 / 6
	
	--turbine
	data.raw["generator"]["steam-turbine-2"].fluid_usage_per_tick = 5 / 6
	data.raw["generator"]["steam-turbine-3"].fluid_usage_per_tick = 5 / 6
	--data.raw["generator"]["steam-turbine-3"].max_power_output = "20MW"
	
	--heat exchanger
	data.raw["boiler"]["heat-exchanger-2"].energy_consumption = "75MW"
	data.raw["boiler"]["heat-exchanger-2"].energy_source.specific_heat = "5MJ"
	data.raw["boiler"]["heat-exchanger-2"].energy_source.max_transfer = "15GW"
	--data.raw["boiler"]["heat-exchanger-2"].energy_source.min_working_temperature = 615

	data.raw["boiler"]["heat-exchanger-3"].energy_consumption = "100MW"
	data.raw["boiler"]["heat-exchanger-3"].energy_source.specific_heat = "5MJ"
	data.raw["boiler"]["heat-exchanger-3"].energy_source.max_transfer = "20GW"
	--data.raw["boiler"]["heat-exchanger-3"].energy_source.min_working_temperature = 765
  end

--reactors: mk2     consumption = "72MW", mk3 consumption = "90MW",
  if settings.startup["bobmods-power-nuclear"].value == true then
	data.raw.item["nuclear-reactor"].stack_size = 10
	data.raw.item["nuclear-reactor-2"].stack_size = 10
	data.raw.item["nuclear-reactor-3"].stack_size = 10

	data.raw["reactor"]["nuclear-reactor-2"].max_health = 1500
	data.raw["reactor"]["nuclear-reactor-3"].max_health = 2000

	data.raw["reactor"]["nuclear-reactor-2"].consumption = "375MW"
	data.raw["reactor"]["nuclear-reactor-2"].energy_source.effectivity = 1
	data.raw["reactor"]["nuclear-reactor-2"].heat_buffer.specific_heat = "75MJ"
	data.raw["reactor"]["nuclear-reactor-2"].heat_buffer.max_transfer = "75GW"
	data.raw["reactor"]["nuclear-reactor-2"].neighbour_bonus = 0.25

	data.raw["reactor"]["nuclear-reactor-3"].consumption = "500MW"
	data.raw["reactor"]["nuclear-reactor-3"].energy_source.effectivity = 1
	data.raw["reactor"]["nuclear-reactor-3"].heat_buffer.specific_heat = "100MJ"
	data.raw["reactor"]["nuclear-reactor-3"].heat_buffer.max_transfer = "100GW"
	data.raw["reactor"]["nuclear-reactor-3"].neighbour_bonus = 0.25

  end

  if ( settings.startup["bobmods-power-nuclear"].value == true or 
	settings.startup["bobmods-power-heatsources"].value == true or 
	settings.startup["bobmods-power-steam"].value == true ) then
	
	data.raw["heat-pipe"]["heat-pipe-2"].heat_buffer.specific_heat = "9MJ"
	data.raw["heat-pipe"]["heat-pipe-2"].heat_buffer.max_transfer = "9GW"
	data.raw["heat-pipe"]["heat-pipe-3"].heat_buffer.specific_heat = "12MJ"
	data.raw["heat-pipe"]["heat-pipe-3"].heat_buffer.max_transfer = "12GW"
  end

--solar
  if settings.startup["bobmods-power-solar"].value == true then
	data.raw["solar-panel"]["solar-panel-small"].production = "45kW"
	data.raw["solar-panel"]["solar-panel-large"].production = "178kW"
	data.raw["solar-panel"]["solar-panel-small-2"].production = "67kW"
	data.raw["solar-panel"]["solar-panel-2"].production = "150kW"
	data.raw["solar-panel"]["solar-panel-large-2"].production = "267kW"
	data.raw["solar-panel"]["solar-panel-small-3"].production = "100kW"
	data.raw["solar-panel"]["solar-panel-3"].production = "225kW"
	data.raw["solar-panel"]["solar-panel-large-3"].production = "400kW"
  end

  if mods["bobplates"] then
	if settings.startup["bobmods-plates-nuclearupdate"].value == true then
	--fuel cells
	--data.raw.item["uranium-fuel-cell"].fuel_value = "250GJ"
	data.raw.item["plutonium-fuel-cell"].fuel_value = "250GJ"
	data.raw.item["thorium-fuel-cell"].fuel_value = "38GJ"
	data.raw.item["thorium-plutonium-fuel-cell"].fuel_value = "250GJ"
	end
  end
end