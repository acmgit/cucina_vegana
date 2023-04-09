minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:dirt_with_rainforest_litter", "default:dirt_with_coniferous_litter", "default:dirt_with_dry_grass"},
	spawn_by = {"default:tree", "default:aspen_tree", "default:jungletree", "default:fernt_1", "default:fern_2", "default:fern_3"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = cucina_vegana.plant_settings.strawberry_scale,
		spread = {x = 50, y = 50, z = 50},
		seed = 8164,
		octaves = 4,
		persist = 0.6
	},
	y_min = -20,
	y_max = 120,
	decoration = "cucina_vegana:wild_strawberry",
})

