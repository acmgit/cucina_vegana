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
		spread = {x = 10, y = 10, z = 10},
		seed = 7133,
		octaves = 3,
		persist = 0.6
	},
	y_min = 0,
	y_max = 150,
	decoration = "cucina_vegana:wild_lettuce",
})

-- lettuce
farming.register_plant("cucina_vegana:lettuce", {
	description = S("Lettuce Seed"),
	inventory_image = "cucina_vegana_lettuce_seed.png",
	steps = 5,
	minlight = 12,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"},
	groups = {flammable = 4, attached_node = 1},
})
	
-- Register for Mapgen
minetest.register_node("cucina_vegana:wild_lettuce", {
	description = S("Wild Lettuce"),
	paramtype = "light",
	walkable = false,
	drop = { 
			items = { 
                    {items = {"cucina_vegana:seed_lettuce 2"}, rarity = 1},
					{items = {"cucina_vegana:seed_lettuce 2"}, rarity = 2},
					{items = {"cucina_vegana:lettuce 2"}, rarity = 1},
                    {items = {"cucina_vegana:lettuce 2"}, rarity = 2},
                    },
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	tiles = {"cucina_vegana_lettuce_5.png"},
	sunlight_propagates = true,
	groups = {snappy = 3, dig_immediate=1, flammable=2, plant=1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
			},
	},
})


-- Convert Redo-Seeds
minetest.register_alias("cucina_vegana:lettuce_seed", "cucina_vegana:seed_lettuce")


minetest.register_alias("lettuce:lettuce", "cucina_vegana:lettuce")
minetest.register_alias("lettuce:seed", "cucina_vegana:lettuce_seed")
minetest.register_alias("lettuce:wild_lettuce", "cucina_vegana:wild_lettuce")

minetest.register_alias("lettuce:bowl", "cucina_vegana:salad_bowl")
minetest.register_alias("lettuce:oil", "cucina_vegana:lettuce_oil")
