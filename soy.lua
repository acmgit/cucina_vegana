minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = cucina_vegana.plant_settings.soy_scale,
		spread = {x = 100, y = 100, z = 100},
		seed = 7133,
		octaves = 3,
		persist = 0.6
	},
	y_min = 10,
	y_max = 90,
	decoration = "cucina_vegana:wild_soy",
})


minetest.register_alias("soy:tofu", "cucina_vegana:tofu")
minetest.register_alias("soy:tofu_cooked", "cucina_vegana:tofu_cooked")
minetest.register_alias("soy:milk", "cucina_vegana:soy_milk")
