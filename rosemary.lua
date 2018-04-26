
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_dry_grass", "default:sand", "default:silver_sand"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.01,
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

minetest.register_craftitem("cucina_vegana:rosemary", {
	description = "Rosemary Twig",
	inventory_image = "cucina_vegana_rosemary.png",
	groups = {flammable = 1, food = 1, eatable = 1},
	on_use = minetest.item_eat(1),
})

