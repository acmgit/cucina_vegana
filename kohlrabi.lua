minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.02,
		spread = {x = 100, y = 100, z = 100},
		seed = 6349,
		octaves = 4,
		persist = 0.6
	},
	y_min = 30,
	y_max = 120,
	decoration = "cucina_vegana:wild_kohlrabi",
})

minetest.register_craft({
	type = "fuel",
	recipe = "cucina_vegana:kohlrabi",
	burntime = 3,
})

minetest.register_craft({
	type = "fuel",
	recipe = "cucina_vegana:kohlrabi",
	burntime = 3
})

minetest.register_craftitem("cucina_vegana:kohlrabi", {
	description = "Kohlrabi",
	inventory_image = "cucina_vegana_kohlrabi.png",
	groups = {flammable = 1, food = 1, eatable = 1},
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:kohlrabi_roasted", {
	description = "Roasted Kohlrabi",
	groups = {food = 1},
	inventory_image = "cucina_vegana_kohlrabi_roasted.png",
	on_use = minetest.item_eat(4),
})

minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	output = "cucina_vegana:kohlrabi_roasted",
	recipe = "cucina_vegana:kohlrabi"
})

minetest.register_craft({
	type = "fuel",
	recipe = "cucina_vegana:kohlrabi_roasted",
	burntime = 4
})

minetest.register_node("cucina_vegana:kohlrabi_soup", {
	description = "Kohlrabi Soup (raw)",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_kohlrabi_soup.png"},
	inventory_image = "cucina_vegana_kohlrabi_soup.png",
	wield_image = "cucina_vegana_kohlrabi_soup.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = "cucina_vegana:kohlrabi_soup",
	recipe = {	{"cucina_vegana:kohlrabi", "group:food_oil", "cucina_vegana:parsley"},
				{"", "bucket:bucket_water", ""},
				{"", "group:food_bowl", ""}
			},
			replacements = {{"bucket:bucket_water", "bucket:bucket_empty"},
						   {"group:food_oil", "vessels:glass_bottle"},
						}
})

minetest.register_craft({
	output = "cucina_vegana:soup",
	recipe = {	{"cucina_vegana:kohlrabi", "group:food_oil", "cucina_vegana:parsley"},
				{"", "bucket:bucket_river_water", ""},
				{"", "group:food_bowl", ""}
			},
			replacements = {{"bucket:bucket_river_water", "bucket:bucket_empty"},
						   {"group:food_oil", "vessels:glas_bottle"},
						}
})

minetest.register_node("cucina_vegana:kohlrabi_soup_cooked", {
	description = "Kohlrabi Soup",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_kohlrabi_soup_cooked.png"},
	inventory_image = "cucina_vegana_kohlrabi_soup_cooked.png",
	wield_image = "cucina_vegana_kohlrabi_soup_cooked.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(5,  "cucina_vegana:bowl"),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "cucina_vegana:kohlrabi_soup_cooked",
	recipe = "cucina_vegana:kohlrabi_soup"
})

minetest.register_alias("kohlrabi:kohlrabi_roasted", "cucina_vegana:kohlrabi_roasted")
minetest.register_alias("kohlrabi:soup", "cucina_vegana:kohlrabi_soup")
minetest.register_alias("kohlrabi:soup_cooked", "cucina_vegana:kohlrabi_soup_cooked")