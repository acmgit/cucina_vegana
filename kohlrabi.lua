minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = cucina_vegana.plant_settings.kohlrabi_scale,
		spread = {x = 100, y = 100, z = 100},
		seed = 6349,
		octaves = 4,
		persist = 0.6
	},
	y_min = 30,
	y_max = 120,
	decoration = "cucina_vegana:wild_kohlrabi",
})

minetest.register_alias("kohlrabi:kohlrabi_roasted", "cucina_vegana:kohlrabi_roasted")
minetest.register_alias("kohlrabi:soup", "cucina_vegana:kohlrabi_soup")
minetest.register_alias("kohlrabi:soup_cooked", "cucina_vegana:kohlrabi_soup_cooked")
