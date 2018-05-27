--[[
	**********************************************
	***                        Soy default                   ***
	**********************************************
]]--

-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

farming.register_plant("cucina_vegana:soy", {
	description = S("Soy Beans"),
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
					{items = {"cucina_vegana:seed_soy 3"}},
					{items = {"cucina_vegana:soy"}},
				}
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


minetest.register_alias("soy:wild_soy", "cucina_vegana:wild_soy")
minetest.register_alias("soy:soy", "cucina_vegana:soy")
minetest.register_alias("soy:seed_soy", "cucina_vegana:seed_soy")
