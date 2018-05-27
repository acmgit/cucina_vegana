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
		spread = {x = 100, y = 100, z = 100},
		seed = 7133,
		octaves = 3,
		persist = 0.6
	},
	y_min = 10,
	y_max = 90,
	decoration = "cucina_vegana:wild_soy",
})

-- Soy

farming.register_plant("cucina_vegana:soy", {
	description = S("Soy Seed"),
	inventory_image = "cucina_vegana_soy_seed.png",
	steps = 8,
	minlight = 12,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"},
	groups = {flammable = 4, attached_node = 1},
})
	
-- Register for Mapgen
minetest.register_node("cucina_vegana:wild_soy", {
	description = S("Wild Soy"),
	paramtype = "light",
	walkable = false,
	drop = { 
			items = { 
                    {items = {"cucina_vegana:seed_soy 2"}, rarity = 1},
					{items = {"cucina_vegana:seed_soy 2"}, rarity = 2},
					{items = {"cucina_vegana:soy 2"}, rarity = 1},
                    {items = {"cucina_vegana:soy 2"}, rarity = 2},
                    },
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	tiles = {"cucina_vegana_soy_8.png"},
	sunlight_propagates = true,
	groups = {chopspy=2, oddly_breakable_by_hand=3, flammable=2, plant=1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
			},
	},
})


-- Convert Redo-Seeds
minetest.register_alias("cucina_vegana:soy_seed", "cucina_vegana:seed_soy")

minetest.register_alias("soy:wild_soy", "cucina_vegana:wild_soy")
minetest.register_alias("soy:soy", "cucina_vegana:soy")
minetest.register_alias("soy:seed_soy", "cucina_vegana:seed_soy")
minetest.register_alias("soy:tofu", "cucina_vegana:tofu")
minetest.register_alias("soy:tofu_cooked", "cucina_vegana:tofu_cooked")
minetest.register_alias("soy:milk", "cucina_vegana:soy_milk")
