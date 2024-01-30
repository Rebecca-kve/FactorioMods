data.raw["map-gen-presets"]["default"]["SeaWorld"] = {
    order = "Sea",
    basic_settings = {
        property_expression_names = {},
        autoplace_controls = {
            ["iron-ore"] = { frequency = 0.5},
            ["copper-ore"] = { frequency = 0.5},
            ["stone"] = { frequency = 0.5},
            ["coal"] = { frequency = 0.5},
            ["uranium-ore"] = { frequency = 0.5},
            ["crude-oil"] = { frequency = 0.5},
			["enemy-base"] = { size = 3, frequency = 3 },
        },
		property_expression_names = {
			elevation = "kap-islands-world2",
		},
			
		terrain_segmentation = 1,
		water = 1,
        starting_area = 1.5,
        peaceful_mode = false,
        cliff_settings = {
            richness = 1
        }
    },

    advanced_settings = {
        difficulty_settings = {
            research_queue_setting = "always"
        }
    },

}
