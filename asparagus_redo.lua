-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

	-- asparagus
	minetest.register_node("cucina_vegana:asparagus_seed", {
		description = S("Asparagus Seed"),
		tiles = {"cucina_vegana_asparagus_seed.png"},
		inventory_image = "cucina_vegana_asparagus_seed.png",
		wield_image = "cucina_vegana_asparagus_seed.png",
		drawtype = "signlike",
		groups = {seed = 1, snappy = 3, attached_node = 1, dig_immediate=1, flammable = 4},
		paramtype = "light",
		paramtype2 = "wallmounted",
		walkable = false,
		sunlight_propagates = true,
		selection_box = farming.select,
		on_place = function(itemstack, placer, pointed_thing)
			return farming.place_seed(itemstack, placer, pointed_thing, "cucina_vegana:asparagus_1")
		end,
	})

	minetest.register_craftitem("cucina_vegana:asparagus", {
		description = S("Asparagus"),
		inventory_image = "cucina_vegana_asparagus.png",
		groups = {flammable = 4},
		})
	
	-- asparagus definition
	local crop_def = {
		drawtype = "plantlike",
		tiles = {"cucina_vegana_asparagus_1.png"},
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
	minetest.register_node("cucina_vegana:asparagus_1", table.copy(crop_def))

	-- stage 2
	crop_def.tiles = {"cucina_vegana_asparagus_2.png"}
	minetest.register_node("cucina_vegana:asparagus_2", table.copy(crop_def))

	-- stage 3
	crop_def.tiles = {"cucina_vegana_asparagus_3.png"}
	minetest.register_node("cucina_vegana:asparagus_3", table.copy(crop_def))

	-- stage 4
	crop_def.tiles = {"cucina_vegana_asparagus_4.png"}
	crop_def.drop = {
		items = {
			{items = {"cucina_vegana:asparagus_seed"}, rarity = 2},
		}
	}
	minetest.register_node("cucina_vegana:asparagus_4", table.copy(crop_def))

	-- stage 5
	crop_def.tiles = {"cucina_vegana_asparagus_5.png"}
	crop_def.drop = {
		items = {
			{items = {"cucina_vegana:asparagus_seed"}, rarity = 1},
			{items = {"cucina_vegana:asparagus_seed"}, rarity = 2},
			{items = {"cucina_vegana:asparagus"}, rarity = 3}
		}
	}
	minetest.register_node("cucina_vegana:asparagus_5", table.copy(crop_def))

	-- stage 6
	crop_def.tiles = {"cucina_vegana_asparagus_6.png"}
	crop_def.drop = {
		items = {
			{items = {"cucina_vegana:asparagus"}, rarity = 1},
			{items = {"cucina_vegana:asparagus"}, rarity = 2},
			{items = {"cucina_vegana:asparagus"}, rarity = 3},
			{items = {"cucina_vegana:asparagus_seed"}, rarity = 1},
			{items = {"cucina_vegana:asparagus_seed"}, rarity = 1},
			{items = {"cucina_vegana:asparagus_seed"}, rarity = 3},
		}
	}
	minetest.register_node("cucina_vegana:asparagus_6", table.copy(crop_def))

	-- Register for Mapgen
	minetest.register_node("cucina_vegana:wild_asparagus", {
		description = S("Wild Asparagus"),
		paramtype = "light",
		walkable = false,
		drop = { 
				items = { 
						{items = {"cucina_vegana:asparagus_seed 3"}},
						{items = {"cucina_vegana:asparagus"}},
					}
				},
		drawtype = "plantlike",
		paramtype2 = "facedir",
		tiles = {"cucina_vegana_asparagus_6.png"},
		groups = {snappy=3, dig_immediate=1, flammable=2, plant=1, attached_node = 1},
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
				},
		},
	})
