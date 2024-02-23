
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_rainforest_litter", "default:dirt",},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = cucina_vegana.shrub_settings.coffee_scale,
		spread = {x = 80, y = 80, z = 80},
		seed = 16384,
		octaves = 4,
		persist = 0.6
	},
	y_min = 0,
	y_max = 400,
	decoration = "cucina_vegana:coffee_top_6",
})
