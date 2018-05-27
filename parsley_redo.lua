-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

-- Parsley
minetest.register_node("cucina_vegana:parsley_seed", {
	description = S("Parsley Seed"),
	tiles = {"cucina_vegana_parsley_seed.png"},
	inventory_image = "cucina_vegana_parsley_seed.png",
	wield_image = "cucina_vegana_parsley_seed.png",
	drawtype = "signlike",
	groups = {seed = 1, snappy = 3, attached_node = 1, dig_immediate=1, flammable = 4, attached_node = 1},
	paramtype = "light",
	paramtype2 = "wallmounted",
	walkable = false,
	sunlight_propagates = true,
	selection_box = farming.select,
	on_place = function(itemstack, placer, pointed_thing)
		return farming.place_seed(itemstack, placer, pointed_thing, "cucina_vegana:parsley_1")
	end,
})

-- Parsley definition
local crop_def = {
	drawtype = "plantlike",
	tiles = {"cucina_vegana_parsley_1.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	drop =  "",
	selection_box = farming.select,
	groups = {
		flammable = 4, snappy=3, dig_immediate=1, plant = 1, attached_node = 1,
		not_in_creative_inventory = 1, growing = 1
	},
	sounds = default.node_sound_leaves_defaults()
}

-- stage 1
minetest.register_node("cucina_vegana:parsley_1", table.copy(crop_def))

-- stage 2
crop_def.tiles = {"cucina_vegana_parsley_2.png"}
minetest.register_node("cucina_vegana:parsley_2", table.copy(crop_def))

-- stage 3
crop_def.tiles = {"cucina_vegana_parsley_3.png"}
minetest.register_node("cucina_vegana:parsley_3", table.copy(crop_def))

-- stage 4
crop_def.tiles = {"cucina_vegana_parsley_4.png"}
crop_def.drop = {
	items = {
		{items = {"cucina_vegana:parsley"}, rarity = 1},
		{items = {"cucina_vegana:parsley_seed"}, rarity = 2},
	}
}
minetest.register_node("cucina_vegana:parsley_4", table.copy(crop_def))

-- stage 5
crop_def.tiles = {"cucina_vegana_parsley_5.png"}
crop_def.drop = {
	items = {
		{items = {"cucina_vegana:parsley"}, rarity = 1},
		{items = {"cucina_vegana:parsley"}, rarity = 1},
		{items = {"cucina_vegana:parsley"}, rarity = 3},
		{items = {"cucina_vegana:parsley_seed"}, rarity = 1},
		{items = {"cucina_vegana:parsley_seed"}, rarity = 1},
		{items = {"cucina_vegana:parsley_seed"}, rarity = 3},
		
	}
}
minetest.register_node("cucina_vegana:parsley_5", table.copy(crop_def))

-- Register for Mapgen
minetest.register_node("cucina_vegana:wild_parsley", {
	description = S("Wild Parsley"),
	paramtype = "light",
	walkable = false,
	drop = { 
			items = { 
					{items = {"cucina_vegana:parsley_seed 3"}},
					{items = {"cucina_vegana:parsley"}},
				}
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	tiles = {"cucina_vegana_parsley_5.png"},
	groups = {snappy=3, dig_immediate=1, flammable=2, plant=1, attached_node = 1},
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

minetest.register_alias("parsley:parsley_1", "cucina_vegana:parsley_1")
minetest.register_alias("parsley:parsley_2", "cucina_vegana:parsley_2")
minetest.register_alias("parsley:parsley_3", "cucina_vegana:parsley_3")
minetest.register_alias("parsley:parsley_4", "cucina_vegana:parsley_4")
minetest.register_alias("parsley:parsley_5", "cucina_vegana:parsley_5")

minetest.register_alias("parsley:parsley", "cucina_vegana:parsley")
minetest.register_alias("parsley:seed", "cucina_vegana:parsley_seed")
minetest.register_alias("parsley:wild_parsley", "cucina_vegana:wild_parsley")
