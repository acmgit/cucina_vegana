-- rosemary
farming.register_plant("cucina_vegana:rosemary", {
	description = "Rosemary",
	inventory_image = "cucina_vegana_rosemary_seed.png",
	steps = 6,
	minlight = 12,
	maxlight = default.LIGHT_MAX,
	fertility = {"sand", "grassland"},
	groups = {flammable = 4},
})
	
-- Register for Mapgen
minetest.register_node("cucina_vegana:wild_rosemary", {
	description = "Wild Rosemary",
	paramtype = "light",
	walkable = false,
	drop = { 
			items = { 
					{items = {"cucina_vegana:seed_rosemary 3"}},
					{items = {"cucina_vegana:rosemary"}},
				}
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	tiles = {"cucina_vegana_rosemary_6.png"},
	groups = {snappy = 3, dig_immediate=1, flammable=2, plant=1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
			},
	},
})
