minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_dry_grass", "default:sand", "default:silver_sand"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = cucina_vegana.plant_settings.rosemary_scale,
		spread = {x = 30, y = 30, z = 30},
		seed = 7133,
		octaves = 2,
		persist = 0.3
	},
	spawn_by = {"default:water_source", "default:river_water_source"},
	height = 1,
	y_min = 0,
	y_max = 50,
	decoration = "cucina_vegana:wild_rosemary",
})
