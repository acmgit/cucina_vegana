minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:dirt_with_rainforest_litter"},
	spawn_by = {"default:tree", "default:aspen_tree", "default:jungletree"},
	num_spawn_by = 2,
	sidelen = 32,
	noise_params = {
		offset = 0,
		scale = cucina_vegana.plant_settings.cucumber_scale,
		spread = {x = 10, y = 10, z = 10},
		seed = 8164,
		octaves = 5,
		persist = 0.6
	},
	y_min = 10,
	y_max = 150,
	decoration = "cucina_vegana:wild_cucumber",
})

