st = st or {}

function st.add_start_items(items)
	local freeplay = remote.interfaces.freeplay
	if not (freeplay and freeplay.get_created_items and freeplay.set_created_items) then return end
	local items = remote.call("freeplay", "get_created_items")
	
	--Luxury
	items["kr-sentinel"] = 4
	items["transport-belt"] = 400
	items["inserter"] = 10
	items["burner-inserter"] = 100	
	--pipes
	items["pipe"] = 200
	items["pipe-to-ground"] = 100
	--power
	items["small-electric-pole"] = 50
	items["kr-wind-turbine"] = 50
	--land
	items["landfill"] = 2000
	items["stone-brick"] = 20
	--Starting buildings
	items["cheap-greenhouse"] = 10
	items["burner-filtration-plant"] = 4
	items["slow-offshore-pump"] = 5
	


	
	if not items['burner-lab'] then
		start_items['lab'] = 1
	end
	
	remote.call("freeplay", "set_created_items", items)
end
