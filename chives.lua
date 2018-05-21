-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")


minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.01,
		spread = {x = 70, y = 70, z = 70},
		seed = 7133,
		octaves = 3,
		persist = 0.6
	},
	spawn_by = {"default:water_source", "default:river_water_source"},
	height = 1,
	y_min = 0,
	y_max = 150,
	decoration = "cucina_vegana:wild_chives",
})

-- chives
farming.register_plant("cucina_vegana:chives", {
	description = S("Chives Seed"),
	inventory_image = "cucina_vegana_chives_seed.png",
	steps = 5,
	minlight = 10,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"},
	groups = {flammable = 4},
})
	
-- Register for Mapgen
minetest.register_node("cucina_vegana:wild_chives", {
	description = S("Wild Chives"),
	paramtype = "light",
	walkable = false,
	drop = { 
			items = { 
                    {items = {"cucina_vegana:seed_chives 2"}, rarity = 1},
					{items = {"cucina_vegana:seed_chives 2"}, rarity = 2},
					{items = {"cucina_vegana:chives 2"}, rarity = 1},
                    {items = {"cucina_vegana:chives 2"}, rarity = 2},
                    },
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	tiles = {"cucina_vegana_chives_5.png"},
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
minetest.register_alias("cucina_vegana:chives_seed", "cucina_vegana:seed_chives")
