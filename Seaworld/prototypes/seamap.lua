data.raw["map-gen-presets"]["default"]["Seatorio"] = {
    order = "Sea",
    basic_settings = {
        property_expression_names = {},
        autoplace_controls = {
            ["iron-ore"] = { frequency = 0},
            ["copper-ore"] = { frequency = 0},
            ["stone"] = { frequency = 0},
            ["coal"] = { frequency = 0},
            ["uranium-ore"] = { frequency = 0},
            ["crude-oil"] = { frequency = 0},
			["enemy-base"] = { size = 3, frequency = 3 },
        },
		property_expression_names = {
			elevation = "kap-islands-world2",
		},
			
		terrain_segmentation = 1.25,
		water = 1.33,
        starting_area = 0.5,
        peaceful_mode = false,
        cliff_settings = {
            richness = 0
        }
    },

    advanced_settings = {
        difficulty_settings = {
            research_queue_setting = "always"
        }
    },

}
