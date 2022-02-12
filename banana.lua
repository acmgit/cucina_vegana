minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_rainforest_litter", "default:dirt"},
	spawn_by = {"default:jungletree"},
	num_spawn_by = 2,
	sidelen = 32,
	noise_params = {
		offset = 0,
		scale = cucina_vegana.plant_settings.banana_scale,
		spread = {x = 10, y = 10, z = 10},
		seed = 6349,
		octaves = 4,
		persist = 0.6
	},
	y_min = 1,
	y_max = 120,
	decoration = "cucina_vegana:wild_banana",
})

