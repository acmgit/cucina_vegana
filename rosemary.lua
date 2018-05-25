-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_dry_grass", "default:sand", "default:silver_sand"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.01,
		spread = {x = 30, y = 30, z = 30},
		seed = 7133,
		octaves = 2,
		persist = 0.3
	},
	spawn_by = {"default:water_source", "default:river_water_source"},
	height = 1,
	y_min = 0,
	y_max = 50,
	decoration = "cucina_vegana:wild_rosemary",
})

-- rosemary
farming.register_plant("cucina_vegana:rosemary", {
	description = S("Rosemary Seed"),
	inventory_image = "cucina_vegana_rosemary_seed.png",
	steps = 6,
	minlight = 12,
	maxlight = default.LIGHT_MAX,
	fertility = {"sand", "grassland"},
	groups = {flammable = 4, attached_node = 1, growing = 1},
})
	
-- Register for Mapgen
minetest.register_node("cucina_vegana:wild_rosemary", {
	description = S("Wild Rosemary"),
	paramtype = "light",
	walkable = false,
	drop = { 
			items = { 
                    {items = {"cucina_vegana:seed_rosemary 2"}, rarity = 1},
					{items = {"cucina_vegana:seed_rosemary 2"}, rarity = 2},
					{items = {"cucina_vegana:rosemary 2"}, rarity = 1},
                    {items = {"cucina_vegana:rosemary 2"}, rarity = 2},
                    },
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	tiles = {"cucina_vegana_rosemary_6.png"},
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
minetest.register_alias("cucina_vegana:rosemary_seed", "cucina_vegana:seed_rosemary")
