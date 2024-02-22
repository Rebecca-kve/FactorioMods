-- Work in progress for next version

--Remember to add mapping when old entity is removed
--[[ In your mod's data.lua or similar
global.entityMigrationMap = {
    ["SW-burner-beacon"] = "SW-burner-furnace",
    -- Add more mappings as needed
}

--]]


local oldEntityName = "SW-burner-beacon"
local newEntityName = "SW-burner-furnace"

-- Define the function to perform the migration
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


    -- Replace items in chests
    for _, surface in pairs(game.surfaces) do
        for _, chest in pairs(surface.find_entities_filtered{type = "container"}) do
            local inventory = chest.get_inventory(defines.inventory.chest)
            for name, count in pairs(inventory.get_contents()) do
                if name == oldEntityName then
                    inventory.remove{name = oldEntityName, count = count}
                    inventory.insert{name = newEntityName, count = count}
                end
            end
        end
    end

    -- Replace items in players' inventories
    for _, player in pairs(game.players) do
        local inventory = player.get_main_inventory()
        for name, count in pairs(inventory.get_contents()) do
            if name == oldEntityName then
                inventory.remove{name = oldEntityName, count = count}
                inventory.insert{name = newEntityName, count = count}
            end
        end
    end


end

-- Register the migration script

script.on_configuration_changed(function(event)
    if event.mod_changes["Seaworld"] and event.mod_changes["Seaworld"].old_version then
        local old_version = event.mod_changes["Seaworld"].old_version
        if old_version < "0.1.8" then
            migrate_to_version_0_1_8()
        end
    end
end)