
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = cucina_vegana.plant_settings.lettuce_scale,
		spread = {x = 10, y = 10, z = 10},
		seed = 7133,
		octaves = 3,
		persist = 0.6
	},
	y_min = 0,
	y_max = 150,
	decoration = "cucina_vegana:wild_lettuce",
})

minetest.register_alias("lettuce:bowl", "cucina_vegana:salad_bowl")
minetest.register_alias("lettuce:oil", "cucina_vegana:lettuce_oil")
