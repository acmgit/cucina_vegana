-- kohlrabi
farming.register_plant("cucina_vegana:kohlrabi", {
	description = "Kohlrabi",
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

minetest.register_alias("kohlrabi:kohlrabi", "cucina_vegana:kohlrabi")
minetest.register_alias("kohlrabi:seed", "cucina_vegana:kohlrabi_seed")
minetest.register_alias("kohlrabi:wild_kohlrabi", "cucina_vegana:wild_kohlrabi")