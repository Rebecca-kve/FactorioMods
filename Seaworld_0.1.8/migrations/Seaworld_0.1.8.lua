local oldEntityName = "SW-burner-beacon"
local newEntityName = "SW-burner-furnace"


local function migrate_to_version_0_1_8()

    for _, surface in pairs(game.surfaces) do
        local entities = surface.find_entities_filtered({name = oldEntityName})
        for _, entity in pairs(entities) do
            -- Preserve items from burnt inventory
            local burntInventory = entity.burner and entity.burner.burnt_result_inventory 
            if burntInventory then
                for item, count in pairs(burntInventory.get_contents()) do
                    entity.burner.burnt_result_inventory .remove({name = item, count = count})
                    game.players[1].insert({name = item, count = count})
                end
            end

            -- Replace the entity with the new furnace
            local newEntity = surface.create_entity({
                name = newEntityName,
                position = entity.position,
                force = entity.force
            })
            entity.destroy()
        end
    end
end

--[[
local function migrate_to_version_0_1_8()
    -- Keep track of whether items have been distributed
    local itemsDistributed = false
    
    -- Iterate over all surfaces
    for _, surface in pairs(game.surfaces) do
        -- Find all entities of the old entity type
        local entities = surface.find_entities_filtered({name = oldEntityName})
        for _, entity in pairs(entities) do
            -- Preserve items from burnt inventory
            local burntInventory = entity.burner and entity.burner.burnt_result_inventory 
            if burntInventory then
                for item, count in pairs(burntInventory.get_contents()) do
                    burntInventory.remove({name = item, count = count})
                    -- Insert items into the player's inventory
                    if not itemsDistributed then
                        game.players[1].insert({name = item, count = count})
                        itemsDistributed = true
                    end
                end
            end

            -- Replace the entity with the new furnace
            local newEntity = surface.create_entity({
                name = newEntityName,
                position = entity.position,
                force = entity.force
            })
            entity.destroy()
        end
    end
end

]]

-- Register the migration script

script.on_configuration_changed(function(event)
    if event.mod_changes["Seaworld"] and event.mod_changes["Seaworld"].old_version then
        local old_version = event.mod_changes["Seaworld"].old_version
        if old_version < "0.1.8" then
            migrate_to_version_0_1_8()
        end
    end
end)