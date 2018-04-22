-- lettuce
minetest.register_node("cucina_vegana:lettuce_seed", {
	description = "Lettuce Seed",
	tiles = {"cucina_vegana_lettuce_seed.png"},
	inventory_image = "cucina_vegana_lettuce_seed.png",
	wield_image = "cucina_vegana_lettuce_seed.png",
	drawtype = "signlike",
	groups = {seed = 1, snappy = 3, attached_node = 1, dig_immediate=1, flammable = 4},
	paramtype = "light",
	paramtype2 = "wallmounted",
	walkable = false,
	sunlight_propagates = true,
	selection_box = farming.select,
	on_place = function(itemstack, placer, pointed_thing)
		return farming.place_seed(itemstack, placer, pointed_thing, "cucina_vegana:lettuce_1")
	end,
})

minetest.register_craftitem("cucina_vegana:lettuce", {
	description = "Lettuce",
	inventory_image = "cucina_vegana_lettuce.png",
	groups = {flammable = 4},
	})
	
-- lettuce definition
local crop_def = {
	drawtype = "plantlike",
	tiles = {"cucina_vegana_lettuce_1.png"},
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
minetest.register_node("cucina_vegana:lettuce_1", table.copy(crop_def))

-- stage 2
crop_def.tiles = {"cucina_vegana_lettuce_2.png"}
minetest.register_node("cucina_vegana:lettuce_2", table.copy(crop_def))

-- stage 3
crop_def.tiles = {"cucina_vegana_lettuce_3.png"}
minetest.register_node("cucina_vegana:lettuce_3", table.copy(crop_def))

-- stage 4
crop_def.tiles = {"cucina_vegana_lettuce_4.png"}
crop_def.drop = {
	items = {
		{items = {"cucina_vegana:lettuce_seed"}, rarity = 2},
	}
}
minetest.register_node("cucina_vegana:lettuce_4", table.copy(crop_def))

-- stage 5
crop_def.tiles = {"cucina_vegana_lettuce_5.png"}
crop_def.drop = {
	items = {
		{items = {"cucina_vegana:lettuce"}, rarity = 1},
		{items = {"cucina_vegana:lettuce"}, rarity = 3},
		{items = {"cucina_vegana:lettuce_seed"}, rarity = 1},
		{items = {"cucina_vegana:lettuce_seed"}, rarity = 1},
		{items = {"cucina_vegana:lettuce_seed"}, rarity = 3},

	}
}
minetest.register_node("cucina_vegana:lettuce_5", table.copy(crop_def))

-- Register for Mapgen
minetest.register_node("cucina_vegana:wild_lettuce", {
	description = "Wild Lettuce",
	paramtype = "light",
	walkable = false,
	drop = { 
			items = { 
					{items = {"cucina_vegana:lettuce_seed 3"}},
					{items = {"cucina_vegana:lettuce"}},
				}
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	tiles = {"cucina_vegana_lettuce_5.png"},
	groups = {snappy=3, dig_immediate=1, flammable=2, plant=1},
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

minetest.register_alias("lettuce:lettuce_1", "cucina_vegana:lettuce_1")
minetest.register_alias("lettuce:lettuce_2", "cucina_vegana:lettuce_2")
minetest.register_alias("lettuce:lettuce_3", "cucina_vegana:lettuce_3")
minetest.register_alias("lettuce:lettuce_4", "cucina_vegana:lettuce_4")
minetest.register_alias("lettuce:lettuce_5", "cucina_vegana:lettuce_5")

minetest.register_alias("lettuce:lettuce", "cucina_vegana:lettuce")
minetest.register_alias("lettuce:seed", "cucina_vegana:lettuce_seed")
minetest.register_alias("lettuce:wild_lettuce", "cucina_vegana:wild_lettuce")