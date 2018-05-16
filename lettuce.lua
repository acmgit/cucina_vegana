
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.01,
		spread = {x = 10, y = 10, z = 10},
		seed = 7133,
		octaves = 3,
		persist = 0.6
	},
	y_min = 0,
	y_max = 150,
	decoration = "cucina_vegana:wild_lettuce",
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

minetest.register_alias("lettuce:bowl", "cucina_vegana:salad_bowl")
minetest.register_alias("lettuce:oil", "cucina_vegana:lettuce_oil")