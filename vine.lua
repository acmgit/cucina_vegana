
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:dry_dirt_with_dry_grass", "default:dirt", "default:dry_dirt"},
	spawn_by = {"default:tree", "default:aspen_tree", "default:dry_grass_5", "default:dry_grass_4", "default:grass_5", "default:grass_4"},
	biomes = {"Grassland", "Hills", "Plains", "Deciduous forest", "Savanna", "Deciduous forest shore", "Savanna shore"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = cucina_vegana.shrub_settings.vine_scale,
		spread = {x = 40, y = 40, z = 40},
		seed = 4711,
		octaves = 4,
		persist = 0.6
	},
	y_min = 0,
	y_max = 150,
	decoration = "cucina_vegana:vine_sapling",
})
