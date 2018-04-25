-- lettuce
farming.register_plant("cucina_vegana:lettuce", {
	description = "Lettuce",
	inventory_image = "cucina_vegana_lettuce_seed.png",
	steps = 5,
	minlight = 12,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"},
	groups = {flammable = 4, attached_node = 1},
})
	
-- Register for Mapgen
minetest.register_node("cucina_vegana:wild_lettuce", {
	description = "Wild Lettuce",
	paramtype = "light",
	walkable = false,
	drop = { 
			items = { 
					{items = {"cucina_vegana:seed_lettuce 3"}},
					{items = {"cucina_vegana:lettuce"}},
				}
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	tiles = {"cucina_vegana_lettuce_5.png"},
	groups = {snappy = 3, dig_immediate=1, flammable=2, plant=1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
			},
	},
})

minetest.register_alias("lettuce:lettuce", "cucina_vegana:lettuce")
minetest.register_alias("lettuce:seed", "cucina_vegana:lettuce_seed")
minetest.register_alias("lettuce:wild_lettuce", "cucina_vegana:wild_lettuce")