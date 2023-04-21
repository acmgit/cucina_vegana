minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dry_dirt_with_dry_grass", "default:dirt", "default:dirt_with_grass", "default:dirt_dry"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = cucina_vegana.plant_settings.corn_scale,
		spread = {x = 20, y = 20, z = 20},
		seed = 6349,
		octaves = 4,
		persist = 0.6
	},
	y_min = -10,
	y_max = 150,
	decoration = "cucina_vegana:wild_corn",
})

