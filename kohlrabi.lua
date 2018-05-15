minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.01,
		spread = {x = 100, y = 100, z = 100},
		seed = 6349,
		octaves = 4,
		persist = 0.6
	},
	y_min = 30,
	y_max = 120,
	decoration = "cucina_vegana:wild_kohlrabi",
})

-- kohlrabi
farming.register_plant("cucina_vegana:kohlrabi", {
	description = "Kohlrabi Seed",
	inventory_image = "cucina_vegana_kohlrabi_seed.png",
	steps = 6,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"},
	groups = {flammable = 4, attached_node = 1},
})
	
-- Register for Mapgen
minetest.register_node("cucina_vegana:wild_kohlrabi", {
	description = "Wild kohlrabi",
	paramtype = "light",
	walkable = false,
	drop = { 
			items = { 
					{items = {"cucina_vegana:seed_kohlrabi 3"}},
					{items = {"cucina_vegana:kohlrabi"}},
				}
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	tiles = {"cucina_vegana_kohlrabi_5.png"},
	groups = {snappy = 3, dig_immediate=1, flammable=2, plant=1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
			},
	},
})

-- Compatibitily for older Versions
minetest.register_alias("cucina_vegana:kohlrabi_seed", "cucina_vegana:seed_kohlrabi")

minetest.register_alias("kohlrabi:kohlrabi", "cucina_vegana:kohlrabi")
minetest.register_alias("kohlrabi:seed", "cucina_vegana:seed_kohlrabi")
minetest.register_alias("kohlrabi:wild_kohlrabi", "cucina_vegana:wild_kohlrabi")
minetest.register_alias("kohlrabi:kohlrabi_roasted", "cucina_vegana:kohlrabi_roasted")
minetest.register_alias("kohlrabi:soup", "cucina_vegana:kohlrabi_soup")
minetest.register_alias("kohlrabi:soup_cooked", "cucina_vegana:kohlrabi_soup_cooked")