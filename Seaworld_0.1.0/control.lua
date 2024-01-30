st = st or {}

script.on_init(function()
	local freeplay = remote.interfaces.freeplay
	if not (freeplay and freeplay.get_created_items and freeplay.set_created_items) then return end
	

	remote.call("freeplay", "set_disable_crashsite", true)
	--remote.call("freeplay", "get_disable_crashsite", true) --Why was this here again?


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
