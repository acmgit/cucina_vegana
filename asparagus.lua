-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:dirt_with_rainforest_litter"},
	spawn_by = {"default:tree", "default:aspen_tree", "default:jungletree"},
	num_spawn_by = 2,
	sidelen = 32,
	noise_params = {
		offset = 0,
		scale = 0.01,
		spread = {x = 10, y = 10, z = 10},
		seed = 6349,
		octaves = 4,
		persist = 0.6
	},
	y_min = 10,
	y_max = 120,
	decoration = "cucina_vegana:wild_asparagus",
})

-- asparagus
farming.register_plant("cucina_vegana:asparagus", {
	description = S("Asparagus Seed"),
	inventory_image = "cucina_vegana_asparagus_seed.png",
	steps = 6,
	minlight = 11,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"},
	groups = {flammable = 4, attached_node = 1},
})
	
-- Register for Mapgen
minetest.register_node("cucina_vegana:wild_asparagus", {
	description = S("Wild Asparagus"),
	paramtype = "light",
	walkable = false,
	drop = { 
			items = {
                    {items = {"cucina_vegana:seed_asparagus 2"}, rarity = 1},
					{items = {"cucina_vegana:seed_asparagus 2"}, rarity = 2},
					{items = {"cucina_vegana:asparagus 2"}, rarity = 1},
                    {items = {"cucina_vegana:asparagus 2"}, rarity = 2},
                    },
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	tiles = {"cucina_vegana_asparagus_6.png"},
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
minetest.register_alias("cucina_vegana:asparagus_seed", "cucina_vegana:seed_asparagus")
