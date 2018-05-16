-- chives
farming.register_plant("cucina_vegana:chives", {
	description = "Chives",
	inventory_image = "cucina_vegana_chives_seed.png",
	steps = 5,
	minlight = 10,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"},
	groups = {flammable = 4},
})
	
-- Register for Mapgen
minetest.register_node("cucina_vegana:wild_chives", {
	description = "Wild Chives",
	paramtype = "light",
	walkable = false,
	drop = { 
			items = { 
					{items = {"cucina_vegana:seed_chives 3"}},
					{items = {"cucina_vegana:chives"}},
				}
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	tiles = {"cucina_vegana_chives_5.png"},
	groups = {snappy = 3, dig_immediate=1, flammable=2, plant=1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
			},
	},
})
