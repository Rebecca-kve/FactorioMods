data.raw["map-gen-presets"]["default"]["SeaWorld"] = {
    order = "Sea",
    basic_settings = {
        property_expression_names = {},
        autoplace_controls = {
            ["iron-ore"] = { frequency = 0.16666666666},
            ["copper-ore"] = { frequency = 0.16666666666},
            ["stone"] = { frequency = 0.16666666666},
            ["coal"] = { frequency = 0.16666666666},
            ["uranium-ore"] = { frequency = 0.16666666666},
            ["crude-oil"] = { frequency = 0.16666666666},
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
