--[[
	**********************************************
	***                        Soy redo                       ***
	**********************************************
]]--

-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

minetest.register_node("cucina_vegana:soy_seed", {
	description = S("Soy Seed"),
	tiles = {"cucina_vegana_soy_seed.png"},
	inventory_image = "cucina_vegana_soy_seed.png",
	wield_image = "cucina_vegana_soy_seed.png",
	drawtype = "signlike",
	groups = {seed = 1, snappy = 3, attached_node = 1, flammable = 4},
	paramtype = "light",
	paramtype2 = "wallmounted",
	walkable = false,
	sunlight_propagates = true,
	selection_box = farming.select,
	on_place = function(itemstack, placer, pointed_thing)
		return farming.place_seed(itemstack, placer, pointed_thing, "cucina_vegana:soy_seed")
	end,
})

minetest.register_craftitem("cucina_vegana:soy", {
	description = S("Soy Bean"),
	inventory_image = "cucina_vegana_soy.png",
	groups = {flammable = 4},
	})
	
-- Soy definition
local crop_def = {
	drawtype = "plantlike",
	tiles = {"cucina_vegana_soy_1.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	drop =  "",
	selection_box = farming.select,
	groups = {
		snappy = 3, flammable = 4, plant = 1, attached_node = 1,
		not_in_creative_inventory = 1, growing = 1
	},
	sounds = default.node_sound_leaves_defaults()
}

-- stage 1
minetest.register_node("cucina_vegana:soy_1", table.copy(crop_def))

-- stage 2
crop_def.tiles = {"cucina_vegana_soy_2.png"}
minetest.register_node("cucina_vegana:soy_2", table.copy(crop_def))

-- stage 3
crop_def.tiles = {"cucina_vegana_soy_3.png"}
minetest.register_node("cucina_vegana:soy_3", table.copy(crop_def))

-- stage 4
crop_def.tiles = {"cucina_vegana_soy_4.png"}
minetest.register_node("cucina_vegana:soy_4", table.copy(crop_def))

-- stage 5
crop_def.tiles = {"cucina_vegana_soy_5.png"}
crop_def.drop = {
	items = {
		{items = {"cucina_vegana:soy_seed"}, rarity = 1},
	}
}
minetest.register_node("cucina_vegana:soy_5", table.copy(crop_def))

-- stage 6
crop_def.tiles = {"cucina_vegana_soy_6.png"}
crop_def.drop = {
	items = {
		{items = {"cucina_vegana:soy_seed"}, rarity = 1},
		{items = {"cucina_vegana:soy"}, rarity = 2},
	}	}
minetest.register_node("cucina_vegana:soy_6", table.copy(crop_def))

-- stage 7
crop_def.tiles = {"cucina_vegana_soy_7.png"}
crop_def.drop = {
	items = {
		{items = {"cucina_vegana:soy"}, rarity = 1},
		{items = {"cucina_vegana:soy"}, rarity = 2},
		{items = {"cucina_vegana:soy_seed"}, rarity = 1},
		{items = {"cucina_vegana:soy_seed"}, rarity = 2},
	}	
}
minetest.register_node("cucina_vegana:soy_7", table.copy(crop_def))

-- stage 8 (final)
crop_def.tiles = {"cucina_vegana_soy_8.png"}
crop_def.groups.growing = 0
crop_def.drop = {
	items = {
		{items = {"cucina_vegana:soy"}, rarity = 1},
		{items = {"cucina_vegana:soy"}, rarity = 2},
		{items = {"cucina_vegana:soy"}, rarity = 3},
		{items = {"cucina_vegana:soy_seed"}, rarity = 1},
		{items = {"cucina_vegana:soy_seed"}, rarity = 2},
		{items = {"cucina_vegana:soy_seed"}, rarity = 3},
	}
}
minetest.register_node("cucina_vegana:soy_8", table.copy(crop_def))
	
-- Register for Mapgen
minetest.register_node("cucina_vegana:wild_soy", {
	description = S("Wild Soy"),
	paramtype = "light",
	walkable = false,
	drop = { 
			items = { 
					{items = {"cucina_vegana:soy_seed 3"}},
					{items = {"cucina_vegana:soy"}},
				}
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	tiles = {"cucina_vegana_soy_8.png"},
	groups = {chopspy=2, oddly_breakable_by_hand=3, flammable=2, plant=1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
			},
	},
})

-- to import the old mod in cucina_vegana
-- can deleted if you have a clean world.

minetest.register_alias("soy:soy_1", "cucina_vegana:soy_1")
minetest.register_alias("soy:soy_2", "cucina_vegana:soy_2")
minetest.register_alias("soy:soy_3", "cucina_vegana:soy_3")
minetest.register_alias("soy:soy_4", "cucina_vegana:soy_4")
minetest.register_alias("soy:soy_5", "cucina_vegana:soy_5")
minetest.register_alias("soy:soy_6", "cucina_vegana:soy_6")
minetest.register_alias("soy:soy_7", "cucina_vegana:soy_7")
minetest.register_alias("soy:soy_8", "cucina_vegana:soy_8")

minetest.register_alias("soy:seed", "cucina_vegana:soy_seed")
minetest.register_alias("soy:wild_soy", "cucina_vegana:wild_soy")
minetest.register_alias("soy:soy", "cucina_vegana:soy")
minetest.register_alias("soy:seed_soy", "cucina_vegana:seed_soy")
