st = st or {}

script.on_init(function()
	local freeplay = remote.interfaces.freeplay
	if not (freeplay and freeplay.get_created_items and freeplay.set_created_items) then return end

    local items = remote.call("freeplay", "get_created_items")
	
	--Luxury
	items["kr-sentinel"] = 2
	items["iron-plate"] = 99
    items["copper-plate"] = 100
	--pipes
	items["pipe"] = 100
	items["pipe-to-ground"] = 50
    items["burner-offshore-pump"] = 1
	--power
	items["small-electric-pole"] = 50
	items["kr-wind-turbine"] = 100
	--Starting buildings
	items["kr-greenhouse"] = 4
	items["kr-filtration-plant"] = 4
	
	remote.call("freeplay", "set_created_items", items)


	remote.call("freeplay", "set_disable_crashsite", true)


	local num = 0
	for _, surface in pairs(game.surfaces) do
		for _, entity in pairs(surface.find_entities_filtered({force="enemy", type={"turret", "unit-spawner", "unit"}, area})) do
			if entity.destroy() then num = num + 1 end
		end
	end

  --Remove start resources
for _, surface in pairs(game.surfaces) do
    for _, entity in pairs(surface.find_entities_filtered({ area, type = "resource" })) do
        -- Check if the resource is not stone before destroying
        if entity.name ~= "stone" then
            if entity.destroy() then
                num = num + 1
            end
        end
    end
end	
		
end)


-- Unlock essentials
local do_once = true
script.on_event(defines.events.on_gui_opened, function(event)

   local player = game.players[event.player_index]

   if not do_once then return end
      
      -- Want landfill now
      local technology = player.force.technologies["landfill"]
      technology.researched = true
      technology.enabled = true

	  local technology = player.force.technologies["kr-greenhouse"]
      technology.researched = true
      technology.enabled = true
           
      do_once = false
end    -- end function
)