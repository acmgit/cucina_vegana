minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_rainforest_litter", "default:dirt", "default:dirt_with_grass"},
	spawn_by = {"default:water_source", "default:river_water_source",
                "default:water_flowing", "default:river_water_flowing", "default:papyrus", "default:jungletree"},
	--biomes = {"rainforest", "rainforest_swamp", "rainforest_ocean",
    --          "grassland_ocean", "deciduous_forest_shore", "deciduous_forest_ocean", "coniferous_forest_ocean"},
	sidelen = 32,
	noise_params = {
		offset = 0,
		scale = cucina_vegana.plant_settings.rice_scale,
		spread = {x = 40, y = 40, z = 40},
		seed = 6349,
		octaves = 3,
		persist = 0.6
	},
	y_min = -5,
	y_max = 50,
	decoration = "cucina_vegana:wild_rice",
})
