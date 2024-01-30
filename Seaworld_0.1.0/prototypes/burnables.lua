
-- Add burnt resoult
for _, item in pairs(data.raw.item) do
    if item.fuel_value and not item.burnt_result then
        item.burnt_result = "SW-ash"
    end
end

data.raw.item["wooden-chest"].burnt_result = "SW-ash"
data.raw.item["burner-inserter"].burnt_result = "SW-ash"


-- add burnt inventory
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
