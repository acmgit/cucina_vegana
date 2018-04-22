
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.02,
		spread = {x = 100, y = 100, z = 100},
		seed = 7133,
		octaves = 3,
		persist = 0.6
	},
	y_min = 0,
	y_max = 150,
	decoration = "cucina_vegana:wild_lettuce",
})

minetest.register_craft({
	type = "fuel",
	recipe = "cucina_vegana:lettuce",
	burntime = 2,
})

minetest.register_craftitem("cucina_vegana:lettuce", {
	description = "Lettuce",
	inventory_image = "cucina_vegana_lettuce.png",
	groups = {flammable = 1, food = 1, eatable = 1},
	on_use = minetest.item_eat(1),
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

minetest.register_craft({
	output = "cucina_vegana:bowl",
	recipe = {	{"default:glass", "", "default:glass"},
				{"default:glass", "default:glass", "default:glass"}
			}
})

minetest.register_node("cucina_vegana:lettuce_oil", {
	description = "Salad Oil",
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
	groups = {dig_immediate = 3, attached_node = 1, food_oil=1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = "cucina_vegana:lettuce_oil",
	recipe = {	{"cucina_vegana:lettuce_seed", "cucina_vegana:lettuce_seed", "cucina_vegana:lettuce_seed"},
				{"cucina_vegana:lettuce_seed", "cucina_vegana:lettuce_seed", "cucina_vegana:lettuce_seed"},
				{"", "vessels:glass_bottle", ""}

			}
	})

minetest.register_craft({
	type = "fuel",
	recipe = "cucina_vegana:lettuce_oil",
	burntime = 20,
	replacements = {{ "cucina_vegana:lettuce_oil", "vessels:glass_bottle"}}
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

minetest.register_craft({
	output = "cucina_vegana:salad_bowl",
	recipe = {	{"cucina_vegana:lettuce", "cucina_vegana:lettuce", "cucina_vegana:lettuce"},
				{"", "group:food_oil", ""},
				{"", "group:food_bowl", ""}
			}
})

minetest.register_alias("lettuce:bowl", "cucina_vegana:salad_bowl")
minetest.register_alias("lettuce:oil", "cucina_vegana:lettuce_oil")