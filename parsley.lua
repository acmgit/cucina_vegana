-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.01,
		spread = {x = 70, y = 70, z = 70},
		seed = 7133,
		octaves = 3,
		persist = 0.6
	},
	y_min = 0,
	y_max = 100,
	decoration = "cucina_vegana:wild_parsley",
})

-- Parsley
farming.register_plant("cucina_vegana:parsley", {
	description = S("Parsley Seed"),
	inventory_image = "cucina_vegana_parsley_seed.png",
	steps = 5,
	minlight = 11,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"},
	groups = {flammable = 4, attached_node = 1, growing = 1},
})
	
-- Register for Mapgen
minetest.register_node("cucina_vegana:wild_parsley", {
	description = S("Wild Parsley"),
	paramtype = "light",
	walkable = false,
	drop = { 
			items = { 
                    {items = {"cucina_vegana:seed_parsley 2"}, rarity = 1},
					{items = {"cucina_vegana:seed_parsley 2"}, rarity = 2},
					{items = {"cucina_vegana:parsley 2"}, rarity = 1},
                    {items = {"cucina_vegana:parsley 2"}, rarity = 2},
                    },
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	tiles = {"cucina_vegana_parsley_5.png"},
	sunlight_propagates = true,
	groups = {snappy = 3, dig_immediate=1, flammable=2, plant=1, attached_node = 1, growing = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
			},
	},
})

-- Convert Redo-Seeds
minetest.register_alias("cucina_vegana:parsley_seed", "cucina_vegana:seed_parsley")

minetest.register_alias("parsley:parsley", "cucina_vegana:parsley")
minetest.register_alias("parsley:seed", "cucina_vegana:parsley_seed")
minetest.register_alias("parsley:wild_parsley", "cucina_vegana:wild_parsley")
