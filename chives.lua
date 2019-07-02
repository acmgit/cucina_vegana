minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = cucina_vegana.plant_settings.chives_scale,
		spread = {x = 70, y = 70, z = 70},
		seed = 7133,
		octaves = 3,
		persist = 0.6
	},
	spawn_by = {"default:water_source", "default:river_water_source"},
	height = 1,
	y_min = 0,
	y_max = 150,
	decoration = "cucina_vegana:wild_chives",
})

