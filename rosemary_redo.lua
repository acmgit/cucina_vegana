-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

-- rosemary
minetest.register_node("cucina_vegana:rosemary_seed", {
	description = S("Rosemary Seed"),
	tiles = {"cucina_vegana_rosemary_seed.png"},
	inventory_image = "cucina_vegana_rosemary_seed.png",
	wield_image = "cucina_vegana_rosemary_seed.png",
	drawtype = "signlike",
	groups = {seed = 1, snappy = 3, attached_node = 1, dig_immediate=1, flammable = 4},
	paramtype = "light",
	paramtype2 = "wallmounted",
	walkable = false,
	sunlight_propagates = true,
	selection_box = farming.select,
	on_place = function(itemstack, placer, pointed_thing)
		return farming.place_seed(itemstack, placer, pointed_thing, "cucina_vegana:rosemary_seed")
	end,
})

-- rosemary definition
local crop_def = {
	drawtype = "plantlike",
	tiles = {"cucina_vegana_rosemary_1.png"},
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
minetest.register_node("cucina_vegana:rosemary_1", table.copy(crop_def))

-- stage 2
crop_def.tiles = {"cucina_vegana_rosemary_2.png"}
minetest.register_node("cucina_vegana:rosemary_2", table.copy(crop_def))

-- stage 3
crop_def.tiles = {"cucina_vegana_rosemary_3.png"}
minetest.register_node("cucina_vegana:rosemary_3", table.copy(crop_def))

-- stage 4
crop_def.tiles = {"cucina_vegana_rosemary_4.png"}
crop_def.drop = {
	items = {
		{items = {"cucina_vegana:rosemary_seed"}, rarity = 2},
	}
}
minetest.register_node("cucina_vegana:rosemary_4", table.copy(crop_def))

-- stage 5
crop_def.tiles = {"cucina_vegana_rosemary_5.png"}
crop_def.drop = {
	items = {
		{items = {"cucina_vegana:rosemary"}, rarity = 1},
		{items = {"cucina_vegana:rosemary_seed"}, rarity = 1},

	}
}
minetest.register_node("cucina_vegana:rosemary_5", table.copy(crop_def))

-- stage 6
crop_def.tiles = {"cucina_vegana_rosemary_6.png"}
crop_def.drop = {
	items = {
		{items = {"cucina_vegana:rosemary"}, rarity = 1},
		{items = {"cucina_vegana:rosemary"}, rarity = 2},
		{items = {"cucina_vegana:rosemary"}, rarity = 3},
		{items = {"cucina_vegana:rosemary_seed"}, rarity = 1},
		{items = {"cucina_vegana:rosemary_seed"}, rarity = 1},
		{items = {"cucina_vegana:rosemary_seed"}, rarity = 3},

	}
}
minetest.register_node("cucina_vegana:rosemary_6", table.copy(crop_def))

-- Register for Mapgen
minetest.register_node("cucina_vegana:wild_rosemary", {
	description = S("Wild Rosemary"),
	paramtype = "light",
	walkable = false,
	drop = { 
			items = { 
					{items = {"cucina_vegana:rosemary_seed 3"}},
					{items = {"cucina_vegana:rosemary"}},
				}
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	tiles = {"cucina_vegana_rosemary_6.png"},
	groups = {snappy=3, dig_immediate=1, flammable=2, plant=1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
			},
	},
})
