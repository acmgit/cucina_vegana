
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.01,
		spread = {x = 70, y = 70, z = 70},
		seed = 7133,
		octaves = 3,
		persist = 0.6
	},
	spawn_by = {"default:water_source", "default:river_water_source"},
	height = 1,
	y_min = 0,
	y_max = 150,
	decoration = "cucina_vegana:wild_chives",
})

minetest.register_craftitem("cucina_vegana:chives", {
	description = "Chives",
	inventory_image = "cucina_vegana_chives.png",
	groups = {flammable = 1, food = 1, eatable = 1},
	on_use = minetest.item_eat(1),
})

