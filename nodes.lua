--   *******************************************
--   *****                 Nodes                       ***** 
--   *******************************************

minetest.register_node("cucina_vegana:plate", {
	description = "Plate",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_plate.png"},
	inventory_image = "cucina_vegana_plate.png",
	wield_image = "cucina_vegana_plate.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1, food_plate=1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:bowl", {
	description = "Glass Bowl",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_bowl.png"},
	inventory_image = "cucina_vegana_bowl.png",
	wield_image = "cucina_vegana_bowl.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1, food_bowl=1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:salad_bowl", {
	description = "Glass Salad Bowl",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_salad_bowl.png"},
	inventory_image = "cucina_vegana_salad_bowl.png",
	wield_image = "cucina_vegana_salad_bowl.png",
	on_use = minetest.item_eat(4, "cucina_vegana:bowl"),
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

minetest.register_node("cucina_vegana:salad_hollandaise", {
	description = "Salad Bowl Hollandaise",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_salad_hollandaise.png"},
	inventory_image = "cucina_vegana_salad_hollandaise.png",
	wield_image = "cucina_vegana_salad_hollandaise.png",
	on_use = minetest.item_eat(5, "cucina_vegana:bowl"),
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
	groups = {dig_immediate = 3, attached_node = 1, food_soup = 1},
	sounds = default.node_sound_glass_defaults(),
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
	on_use = minetest.item_eat(5,  "cucina_vegana:plate"),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:soy_soup", {
	description = "Soy Soup (raw)",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_soy_soup.png"},
	inventory_image = "cucina_vegana_soy_soup.png",
	wield_image = "cucina_vegana_soy_soup.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1, food_soup = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:soy_soup_cooked", {
	description = "Soy Soup",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_soy_soup_cooked.png"},
	inventory_image = "cucina_vegana_soy_soup_cooked.png",
	wield_image = "cucina_vegana_soy_soup_cooked.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(5,  "cucina_vegana:plate"),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:asparagus_soup", {
	description = "Asparagus Soup (raw)",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_asparagus_soup.png"},
	inventory_image = "cucina_vegana_asparagus_soup.png",
	wield_image = "cucina_vegana_asparagus_soup.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1, food_soup = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:asparagus_soup_cooked", {
	description = "Asparagus Soup",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_asparagus_soup_cooked.png"},
	inventory_image = "cucina_vegana_asparagus_soup_cooked.png",
	wield_image = "cucina_vegana_asparagus_soup_cooked.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(5,  "cucina_vegana:plate"),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:asparagus_hollandaise", {
	description = "Asparagus Hollandaise (raw)",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_asparagus_hollandaise.png"},
	inventory_image = "cucina_vegana_asparagus_hollandaise.png",
	wield_image = "cucina_vegana_asparagus_hollandaise.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1, food_soup = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:asparagus_hollandaise_cooked", {
	description = "Asparagus Hollandaise",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_asparagus_hollandaise_cooked.png"},
	inventory_image = "cucina_vegana_asparagus_hollandaise_cooked.png",
	wield_image = "cucina_vegana_asparagus_hollandaise_cooked.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(5,  "cucina_vegana:plate"),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:sunflower_seeds_oil", {
	description = "Bottle of Sunflower Seeds Oil",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_sunflower_seeds_oil.png"},
	inventory_image = "cucina_vegana_sunflower_seeds_oil.png",
	wield_image = "cucina_vegana_sunflower_seeds_oil.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(2, "vessels:glass_bottle"),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1, food = 1, food_oil = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:sauce_hollandaise", {
	description = "Sauce Hollandaise",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_sauce_hollandaise.png"},
	inventory_image = "cucina_vegana_sauce_hollandaise.png",
	wield_image = "cucina_vegana_sauce_hollandaise.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(3, "vessels:glass_bottle"),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1, food = 1, food_sauce = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:tofu_chives_rosemary", {
	description = "Tofu on Chives and Rosemary (raw)",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_tofu_chives_rosemary.png"},
	inventory_image = "cucina_vegana_tofu_chives_rosemary.png",
	wield_image = "cucina_vegana_tofu_chives_rosemary.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(5,  "cucina_vegana:plate"),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:tofu_chives_rosemary_cooked", {
	description = "Tofu on Chives and Rosemary (cooked)",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_tofu_chives_rosemary_cooked.png"},
	inventory_image = "cucina_vegana_tofu_chives_rosemary_cooked.png",
	wield_image = "cucina_vegana_tofu_chives_rosemary_cooked.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(6,  "cucina_vegana:plate"),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:fish_parsley_rosemary", {
	description = "Fish on Parsley and Rosemary (raw)",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_fish_parsley_rosemary.png"},
	inventory_image = "cucina_vegana_fish_parsley_rosemary.png",
	wield_image = "cucina_vegana_fish_parsley_rosemary.png",
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

minetest.register_node("cucina_vegana:fish_parsley_rosemary_cooked", {
	description = "Fish on Parsley and Rosemary (cooked)",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_fish_parsley_rosemary_cooked.png"},
	inventory_image = "cucina_vegana_fish_parsley_rosemary_cooked.png",
	wield_image = "cucina_vegana_fish_parsley_rosemary_cooked.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(6,  "cucina_vegana:plate"),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:bowl_rice", {
	description = "Bowl of Rice",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_bowl_rice.png"},
	inventory_image = "cucina_vegana_bowl_rice.png",
	wield_image = "cucina_vegana_bowl_rice.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1, food_rice=1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:bowl_rice_cooked", {
	description = "Bowl of Rice",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_bowl_rice_cooked.png"},
	inventory_image = "cucina_vegana_bowl_rice_cooked.png",
	wield_image = "cucina_vegana_bowl_rice_cooked.png",
	paramtype = "light",
	is_ground_content = false,
	on_use = minetest.item_eat(5,  "cucina_vegana:bowl"),
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:asparagus_rice", {
	description = "Asparagus on Rice (raw)",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_asparagus_rice.png"},
	inventory_image = "cucina_vegana_asparagus_rice.png",
	wield_image = "cucina_vegana_asparagus_rice.png",
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

minetest.register_node("cucina_vegana:asparagus_rice_cooked", {
	description = "Asparagus on Rice",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_asparagus_rice_cooked.png"},
	inventory_image = "cucina_vegana_asparagus_rice_cooked.png",
	wield_image = "cucina_vegana_asparagus_rice_cooked.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(5,  "cucina_vegana:plate"),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})
