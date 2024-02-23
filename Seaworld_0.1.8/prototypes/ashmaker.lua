-- work in progress
local flib_data_util = require('__flib__.data-util');

color = {
	["burner"] = { 
	  r = 200 / 255,
	  g = 160 / 255,
	  b = 90 / 255,
	  a = 1.0 },
}

local burner_furn_item = flib_data_util.copy_prototype(data.raw["item"]["stone-furnace"], "SW-burner-beacon")
burner_furn_item.order = "a[burner-furnace]"
burner_furn_item.place_result = "SW-burner-furnace"
burner_furn_item.icons = {
	{
		icon = "__base__/graphics/icons/stone-furnace.png",
		icon_size = 64,
		tint = color.burner
	},
	{
		icon = "__Seaworld__/graphics/icons/burner.png",
		icon_size = 64,
		scale = 0.40,
		shift = { 8, -8 },
	},
}
data:extend({burner_furn_item})


local burner_furn_entity = flib_data_util.copy_prototype(data.raw["furnace"]["stone-furnace"], "SW-burner-furnace")
burner_furn_entity.crafting_categories = {"SW-fuel-recipes"}
burner_furn_entity.minable.result = "SW-burner-beacon"
burner_furn_entity.energy_source = {
    type = "void"
}
burner_furn_entity.crafting_speed = 1
burner_furn_entity.next_upgrade = nil

burner_furn_entity.animation = table.deepcopy(data.raw.furnace["stone-furnace"].animation)
burner_furn_entity.working_visualisations  = table.deepcopy(data.raw.furnace["stone-furnace"].working_visualisations)
burner_furn_entity.animation.layers[1].tint = color.burner
burner_furn_entity.animation.layers[1].hr_version.tint = color.burner



data:extend({burner_furn_entity})

data:extend({

	{
		type = "recipe",
		enabled = true,
		energy_required = 2,
		name = "SW-burner-beacon",
        ingredients = {
			{"stone-brick", 10},
        },
		result = "SW-burner-beacon",
	},
})

-- recipes


local function convertFuelValueToFloat(fuelValue)
    -- Extract numeric value and unit from the fuel value string
    local numericValue, unit = fuelValue:match("(%d+%.?%d*)(%a+)")

    -- Convert numeric value to float
    local floatValue = tonumber(numericValue)

    -- Convert unit to standard unit (e.g., convert kW to W, MW to W, GW to W)
    if unit == "kJ" then
        floatValue = floatValue * 0.1
    elseif unit == "MJ" then
        floatValue = floatValue * 1
    elseif unit == "GJ" then
        floatValue = floatValue * 1e3
    elseif unit == "TJ" then
        floatValue = floatValue * 1e6
    elseif unit == "PJ" then
        floatValue = floatValue * 1e9
    elseif unit == "EJ" then
        floatValue = floatValue * 1e12
    elseif unit == "ZJ" then
        floatValue = floatValue * 1e15
    elseif unit == "YJ" then
        floatValue = floatValue * 1e18
    -- Add more unit conversions as needed
    end

    return floatValue
end


local function createBurntResultRecipes()
    for _, item in pairs(data.raw["item"]) do
        -- Check if the item has a burnt result and fuel value
        if item.burnt_result and item.fuel_value then
            -- Define the recipe name
            local recipeName = "get-burnt-" .. item.name

            -- Calculate the recipe time based on the fuel value
            local fuelValue = convertFuelValueToFloat(item.fuel_value)
            local recipeTime = fuelValue/10  -- Assuming 1 fuel value = 1 second

            -- Create the recipe
            data:extend({
                {
                    type = "recipe",
                    name = recipeName,
                    enabled = true,  -- Set to true if you want the recipe to be initially available
                    energy_required = recipeTime,
                    icon = "__Seaworld__/graphics/icons/burner.png",
                    icon_size = 64,
                    icon_mipmaps = 4,
                    subgroup = "other",
                    hidden = true,
                    ingredients = {
                        {type = "item", name = item.name, amount = 1}
                    },
                    results = {
                        {type = "item", name = item.burnt_result, amount = 1}
                    },
                    category = "SW-fuel-recipes",  -- Assign to your new crafting category
                }
            })
        end
    end
end

data:extend({
	{
		name = "SW-fuel-recipes",
		type = "recipe-category",
	},

    createBurntResultRecipes()
})