local flib_data_util = require('__flib__.data-util');

--Burner lamp
local SW_Burner_lamp = flib_data_util.copy_prototype(data.raw["item"]["small-lamp"], "SW-burner-lamp")
SW_Burner_lamp.order = "a[light]-a[burner-lamp]",
SW_Burner_lamp.icons = {
	{ icon = "__base__/graphics/icons/small-lamp.png", icon_size = 64 },
	{
		icon = "__SeaTorio__/graphics/icons/burner.png",
		icon_size = 64,
		scale = 0.40,
		shift = { 8, -8 },
	},
}
data:extend({SW_Burner_lamp})

local SW_Burner_lamp = flib_data_util.copy_prototype(data.raw["lamp"]["small-lamp"], "SW-burner-lamp")
SW_Burner_lamp.energy_source = {
        type = "burner",
		fuel_inventory_size = 1,
		effectivity = 0.1,
		fuel_category =  "chemical",
		emissions_per_minute = 0.5,
}

data:extend({SW_Burner_lamp})