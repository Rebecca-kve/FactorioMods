local category_name = "small-crafting"

local assembler = data.raw["assembling-machine"]["assembling-machine-1"]

-- Build a lookup table of every category AM1 can craft
local assembler_categories = {}

for _, category in pairs(assembler.crafting_categories or {}) do
    assembler_categories[category] = true
end

for _, recipe in pairs(data.raw.recipe) do
    -- Exactly the requested number of ingredient entries
    if recipe.ingredients and #recipe.ingredients <= ingredients_setting then

        -- Missing categories means "crafting"
        local categories = recipe.categories or {"crafting"}

        -- Does AM1 support ANY of this recipe's categories?
        local can_assemble = false

        for _, category in pairs(categories) do
            if assembler_categories[category] then
                can_assemble = true
                break
            end
        end

        if can_assemble then
            recipe.categories = recipe.categories or {"crafting"}

            -- Avoid duplicates
            local already_added = false

            for _, category in pairs(recipe.categories) do
                if category == category_name then
                    already_added = true
                    break
                end
            end

            if not already_added then
                table.insert(recipe.categories, category_name)
            end
        end
    end
end

data:extend({
    {
        type = "recipe-category",
        name = category_name
    }
})

data.raw["assembling-machine"]["small-assembling-machine-1"].ingredient_count = ingredients_setting