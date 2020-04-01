--   *******************************************
--   *****                 Nodes           *****
--   *******************************************

-- Load support for intllib.
local S = cucina_vegana.get_translator

--   *******************************************
--   *****           Supports              *****
--   *******************************************

minetest.register_node("cucina_vegana:bowl", {
	description = S("Glass Bowl"),
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

minetest.register_node("cucina_vegana:flax_seed_oil", {
	description = S("Bottle of Flaxseed Oil"),
	drawtype = "plantlike",
	tiles = {"cucina_vegana_flax_seed_oil.png"},
	inventory_image = "cucina_vegana_flax_seed_oil.png",
	wield_image = "cucina_vegana_flax_seed_oil.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(2, "vessels:glass_bottle"),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1, food = 1, food_oil = 1, food_vegan = 1, eatable = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:mushroomlight_glass", {
	description = S("Mushroomlight Glass"),
	drawtype = "glasslike_framed_optional",
	tiles = {"cucina_vegana_mushroom_light.png","cucina_vegana_mushroom_light_detail.png"},
	paramtype = "light",
    light_source = 3,
	paramtype2 = "glasslikeliquidlevel",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults()
})

minetest.register_node("cucina_vegana:peanut_oil", {
	description = S("Bottle of Peanut Oil"),
	drawtype = "plantlike",
	tiles = {"cucina_vegana_peanut_oil.png"},
	inventory_image = "cucina_vegana_peanut_oil.png",
	wield_image = "cucina_vegana_peanut_oil.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(5, "vessels:glass_bottle"),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1, food = 1, food_oil = 1, food_vegan = 1, eatable = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:plate", {
	description = S("Plate"),
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

minetest.register_node("cucina_vegana:sunflower_seeds_oil", {
	description = S("Bottle of Sunflower Seeds Oil"),
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
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1, food = 1, food_oil = 1, food_vegan = 1, eatable = 1},
	sounds = default.node_sound_glass_defaults(),
})

--   *******************************************
--   *****       Síde Dishes               *****
--   *******************************************

minetest.register_node("cucina_vegana:blueberry_jam", {
	description = S("Blueberry Jam"),
	drawtype = "plantlike",
	tiles = {"cucina_vegana_blueberry_jam.png"},
	inventory_image = "cucina_vegana_blueberry_jam.png",
	wield_image = "cucina_vegana_blueberry_jam.png",
	paramtype = "light",
	is_ground_content = false,
	on_use = minetest.item_eat(8),
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1, food_vegan = 1, food_sweet = 1, eatable = 1},
})

minetest.register_node("cucina_vegana:ciabatta_bread", {
	description = S("Ciabatta Bread"),
	drawtype = "plantlike",
	tiles = {"cucina_vegana_ciabatta_bread.png"},
	inventory_image = "cucina_vegana_ciabatta_bread.png",
	wield_image = "cucina_vegana_ciabatta_bread.png",
	paramtype = "light",
	is_ground_content = false,
	on_use = minetest.item_eat(4),
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1, food_bread = 1, food_vegan = 1, eatable = 1},
})

minetest.register_node("cucina_vegana:edamame", {
	description = S("Edamame (raw)"),
	drawtype = "plantlike",
	tiles = {"cucina_vegana_edamame.png"},
	inventory_image = "cucina_vegana_edamame.png",
	wield_image = "cucina_vegana_edamame.png",
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

minetest.register_node("cucina_vegana:edamame_cooked", {
	description = S("Edamame"),
	drawtype = "plantlike",
	tiles = {"cucina_vegana_edamame_cooked.png"},
	inventory_image = "cucina_vegana_edamame_cooked.png",
	wield_image = "cucina_vegana_edamame_cooked.png",
	on_use = minetest.item_eat(4, "cucina_vegana:plate"),
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

minetest.register_node("cucina_vegana:lettuce_oil", {
	description = S("Salad Oil"),
	drawtype = "plantlike",
	tiles = {"cucina_vegana_lettuce_oil.png"},
	inventory_image = "cucina_vegana_lettuce_oil.png",
	wield_image = "cucina_vegana_lettuce_oil.png",
	paramtype = "light",
	is_ground_content = false,
	on_use = minetest.item_eat(2, "vessels:glass_bottle"),
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1, food_oil = 1, food_vegan = 1, eatable = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:peanut_butter", {
	description = S("Peanut Butter"),
	drawtype = "plantlike",
	tiles = {"cucina_vegana_peanut_butter.png"},
	inventory_image = "cucina_vegana_peanut_butter.png",
	wield_image = "cucina_vegana_peanut_butter.png",
	paramtype = "light",
	is_ground_content = false,
	on_use = minetest.item_eat(10),
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1, food_vegan = 1, food_sweet = 1, food_butter = 1, eatable = 1},
})

minetest.register_node("cucina_vegana:salad_bowl", {
	description = S("Glass Salad Bowl"),
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

minetest.register_node("cucina_vegana:sauce_hollandaise", {
	description = S("Sauce Hollandaise"),
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
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1, food = 1, food_sauce = 1, food_vegan = 1, eatable = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:sea_salad", {
	description = S("Sea Salad Bowl"),
	drawtype = "plantlike",
	tiles = {"cucina_vegana_sea_salad.png"},
	inventory_image = "cucina_vegana_sea_salad.png",
	wield_image = "cucina_vegana_sea_salad.png",
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

--   *******************************************
--   *****           Dinners               *****
--   *******************************************

minetest.register_node("cucina_vegana:asparagus_hollandaise", {
	description = S("Asparagus Hollandaise (raw)"),
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
	groups = {dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:asparagus_rice", {
	description = S("Asparagus on Rice (raw)"),
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
	groups = {dig_immediate = 3, attached_node = 1, food_vegan = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:asparagus_soup", {
	description = S("Asparagus Soup (raw)"),
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

minetest.register_node("cucina_vegana:bowl_rice", {
	description = S("Bowl of Rice (raw)"),
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
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1, food_rice = 1, food_vegan = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:fish_parsley_rosemary", {
	description = S("Fish on Parsley and Rosemary (raw)"),
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

minetest.register_node("cucina_vegana:fryer_raw", {
	description = S("Fryer (raw)"),
	drawtype = "plantlike",
	tiles = {"cucina_vegana_fryer_raw.png"},
	inventory_image = "cucina_vegana_fryer_raw.png",
	wield_image = "cucina_vegana_fryer_raw.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1, food_vegan = 1},
})

minetest.register_node("cucina_vegana:fryer", {
	description = S("Fryer"),
	drawtype = "plantlike",
	tiles = {"cucina_vegana_fryer.png"},
	inventory_image = "cucina_vegana_fryer.png",
	wield_image = "cucina_vegana_fryer.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(8),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1, food_vegan = 1, eatable = 1},
})

minetest.register_node("cucina_vegana:kohlrabi_soup", {
	description = S("Kohlrabi Soup (raw)"),
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

minetest.register_node("cucina_vegana:salad_hollandaise", {
	description = S("Salad Bowl Hollandaise"),
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
	groups = {dig_immediate = 3, attached_node = 1, food_vegan = 1, eatable = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:soy_soup", {
	description = S("Soy Soup (raw)"),
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

minetest.register_node("cucina_vegana:tofu_chives_rosemary", {
	description = S("Tofu on Chives and Rosemary (raw)"),
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
	groups = {dig_immediate = 3, attached_node = 1, food_vegan = 1, eatable = 1},
	sounds = default.node_sound_glass_defaults(),
})

--   *******************************************
--   *****       Dinners cooked            *****
--   *******************************************

minetest.register_node("cucina_vegana:asparagus_hollandaise_cooked", {
	description = S("Asparagus Hollandaise"),
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
	groups = {dig_immediate = 3, attached_node = 1, eatable = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:asparagus_rice_cooked", {
	description = S("Asparagus on Rice"),
	drawtype = "plantlike",
	tiles = {"cucina_vegana_asparagus_rice_cooked.png"},
	inventory_image = "cucina_vegana_asparagus_rice_cooked.png",
	wield_image = "cucina_vegana_asparagus_rice_cooked.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(6,  "cucina_vegana:plate"),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1, eatable = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:asparagus_soup_cooked", {
	description = S("Asparagus Soup"),
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
	groups = {dig_immediate = 3, attached_node = 1, eatable = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:bowl_rice_cooked", {
	description = S("Bowl of Rice"),
	drawtype = "plantlike",
	tiles = {"cucina_vegana_bowl_rice_cooked.png"},
	inventory_image = "cucina_vegana_bowl_rice_cooked.png",
	wield_image = "cucina_vegana_bowl_rice_cooked.png",
	paramtype = "light",
	is_ground_content = false,
	on_use = minetest.item_eat(4,  "cucina_vegana:bowl"),
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1, eatable = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:fish_parsley_rosemary_cooked", {
	description = S("Fish on Parsley and Rosemary"),
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
	groups = {dig_immediate = 3, attached_node = 1, eatable = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:kohlrabi_soup_cooked", {
	description = S("Kohlrabi Soup"),
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
	groups = {dig_immediate = 3, attached_node = 1, eatable = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:pizza_vegana_raw", {
	description = S("Pizza Vegana (raw)"),
	drawtype = "plantlike",
	tiles = {"cucina_vegana_pizza_vegana_raw.png"},
	inventory_image = "cucina_vegana_pizza_vegana_raw.png",
	wield_image = "cucina_vegana_pizza_vegana_raw.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1, food_vegan = 1},
})

minetest.register_node("cucina_vegana:pizza_vegana", {
	description = S("Pizza Vegana"),
	drawtype = "plantlike",
	tiles = {"cucina_vegana_pizza_vegana.png"},
	inventory_image = "cucina_vegana_pizza_vegana.png",
	wield_image = "cucina_vegana_pizza_vegana.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(6),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1, food_vegan = 1, eatable = 1},
})

minetest.register_node("cucina_vegana:pizza_funghi_raw", {
	description = S("Pizza Funghi (raw)"),
	drawtype = "plantlike",
	tiles = {"cucina_vegana_pizza_funghi_raw.png"},
	inventory_image = "cucina_vegana_pizza_funghi_raw.png",
	wield_image = "cucina_vegana_pizza_funghi_raw.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1, food_vegan = 1},
})

minetest.register_node("cucina_vegana:pizza_funghi", {
	description = S("Pizza Funghi"),
	drawtype = "plantlike",
	tiles = {"cucina_vegana_pizza_funghi.png"},
	inventory_image = "cucina_vegana_pizza_funghi.png",
	wield_image = "cucina_vegana_pizza_funghi.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(6),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1, food_vegan = 1, eatable = 1},
})

minetest.register_node("cucina_vegana:soy_soup_cooked", {
	description = S("Soy Soup"),
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
	groups = {dig_immediate = 3, attached_node = 1, eatable = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:tofu_chives_rosemary_cooked", {
	description = S("Tofu on Chives and Rosemary"),
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
	groups = {dig_immediate = 3, attached_node = 1, eatable = 1},
	sounds = default.node_sound_glass_defaults(),
})
