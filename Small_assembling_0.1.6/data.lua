require("prototypes.entity")
require("prototypes.small-burner-assembly")
require("prototypes.technology")

--[[ in 2.1 a new crafting chategory needs to be made as the old ingredient_count is removed
local max_allowed_ingredients = 2 

for _, recipe in pairs(data.raw["recipe"]) do
    if recipe.category == "crafting" or recipe.category == nil then
        
        local ingredients = recipe.ingredients or (recipe.normal and recipe.normal.ingredients)
        
        if ingredients then
            local item_count = 0
            
            for _, ing in pairs(ingredients) do
                if ing.type == "item" or ing[1] ~= nil then
                    item_count = item_count + 1
                end
            end
            
            if item_count > ingredient_count then
                -- Endrer kategori så vanlige (små) maskiner ikke kan bruke den
                recipe.category = "small-crafting" 
            end
        end
    end
end

--]]