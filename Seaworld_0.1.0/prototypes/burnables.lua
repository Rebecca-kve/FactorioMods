data.raw.item["coal"].burnt_result = "ash"
data.raw.item["coke"].burnt_result = "ash"
data.raw.item["biomass"].burnt_result = "ash"
data.raw.item["solid-fuel"].burnt_result = "ash"
data.raw.item["wood"].burnt_result = "ash"
data.raw.item["rocket-fuel"].burnt_result = "ash"
data.raw.item["small-electric-pole"].burnt_result = "ash"
data.raw.item["wooden-chest"].burnt_result = "ash"

--[[
data.raw.furnace["steel-furnace"].energy_source.burnt_inventory_size = 1
data.raw.furnace["stone-furnace"].energy_source.burnt_inventory_size = 1
data.raw.boiler["boiler"].energy_source.burnt_inventory_size = 1
data.raw["mining-drill"]["burner-mining-drill"].energy_source.burnt_inventory_size = 1
data.raw["assembling-machine"]["burner-offshore-pump"].energy_source.burnt_inventory_size = 1
data.raw.locomotive["locomotive"].burner.burnt_inventory_size = 1
--]]

for _, entity in pairs(data.raw) do
    for _, definition in pairs(entity) do
        if definition.energy_source and definition.energy_source.type == "burner" then
            definition.energy_source.burnt_inventory_size = 1
        end
    end
end

for _, entity in pairs(data.raw) do
    for _, definition in pairs(entity) do
        if definition.burner then
            -- Check if the entity is a locomotive (you may need to adjust this condition)
            if definition.type == "locomotive" then
                definition.burner.burnt_inventory_size = 1
            end
        end
    end
end
