	-- kohlrabi
	minetest.register_node("cucina_vegana:kohlrabi_seed", {
		description = "Kohlrabi Seed",
		tiles = {"cucina_vegana_kohlrabi_seed.png"},
		inventory_image = "cucina_vegana_kohlrabi_seed.png",
		wield_image = "cucina_vegana_kohlrabi_seed.png",
		drawtype = "signlike",
		groups = {seed = 1, snappy = 3, attached_node = 1, dig_immediate=1, flammable = 4},
		paramtype = "light",
		paramtype2 = "wallmounted",
		walkable = false,
		sunlight_propagates = true,
		selection_box = farming.select,
		on_place = function(itemstack, placer, pointed_thing)
			return farming.place_seed(itemstack, placer, pointed_thing, "cucina_vegana:kohlrabi_1")
		end,
	})

	minetest.register_craftitem("cucina_vegana:kohlrabi", {
		description = "Kohlrabi",
		inventory_image = "cucina_vegana_kohlrabi.png",
		groups = {flammable = 4},
		})
	
	-- kohlrabi definition
	local crop_def = {
		drawtype = "plantlike",
		tiles = {"cucina_vegana_kohlrabi_1.png"},
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
	minetest.register_node("cucina_vegana:kohlrabi_1", table.copy(crop_def))

	-- stage 2
	crop_def.tiles = {"cucina_vegana_kohlrabi_2.png"}
	minetest.register_node("cucina_vegana:kohlrabi_2", table.copy(crop_def))

	-- stage 3
	crop_def.tiles = {"cucina_vegana_kohlrabi_3.png"}
	minetest.register_node("cucina_vegana:kohlrabi_3", table.copy(crop_def))

	-- stage 4
	crop_def.tiles = {"cucina_vegana_kohlrabi_4.png"}
	crop_def.drop = {
		items = {
			{items = {"cucina_vegana:kohlrabi_seed"}, rarity = 2},
		}
	}
	minetest.register_node("cucina_vegana:kohlrabi_4", table.copy(crop_def))

	-- stage 5
	crop_def.tiles = {"cucina_vegana_kohlrabi_5.png"}
	crop_def.drop = {
		items = {
			{items = {"cucina_vegana:kohlrabi_seed"}, rarity = 1},
			{items = {"cucina_vegana:kohlrabi_seed"}, rarity = 2},
			{items = {"cucina_vegana:kohlrabi"}, rarity = 3}
		}
	}
	minetest.register_node("cucina_vegana:kohlrabi_5", table.copy(crop_def))

	-- stage 6
	crop_def.tiles = {"cucina_vegana_kohlrabi_6.png"}
	crop_def.drop = {
		items = {
			{items = {"cucina_vegana:kohlrabi"}, rarity = 1},
			{items = {"cucina_vegana:kohlrabi"}, rarity = 2},
			{items = {"cucina_vegana:kohlrabi"}, rarity = 3},
			{items = {"cucina_vegana:kohlrabi_seed"}, rarity = 1},
			{items = {"cucina_vegana:kohlrabi_seed"}, rarity = 1},
			{items = {"cucina_vegana:kohlrabi_seed"}, rarity = 3},
		}
	}
	minetest.register_node("cucina_vegana:kohlrabi_6", table.copy(crop_def))

	-- Register for Mapgen
	minetest.register_node("cucina_vegana:wild_kohlrabi", {
		description = "Wild Kohlrabi",
		paramtype = "light",
		walkable = false,
		drop = { 
				items = { 
						{items = {"cucina_vegana:kohlrabi_seed 3"}},
						{items = {"cucina_vegana:kohlrabi"}},
					}
				},
		drawtype = "plantlike",
		paramtype2 = "facedir",
		tiles = {"cucina_vegana_kohlrabi_5.png"},
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

minetest.register_alias("kohlrabi:kohlrabi_1", "cucina_vegana:kohlrabi_1")
minetest.register_alias("kohlrabi:kohlrabi_2", "cucina_vegana:kohlrabi_2")
minetest.register_alias("kohlrabi:kohlrabi_3", "cucina_vegana:kohlrabi_3")
minetest.register_alias("kohlrabi:kohlrabi_4", "cucina_vegana:kohlrabi_4")
minetest.register_alias("kohlrabi:kohlrabi_5", "cucina_vegana:kohlrabi_5")
	
minetest.register_alias("kohlrabi:kohlrabi", "cucina_vegana:kohlrabi")
minetest.register_alias("kohlrabi:seed", "cucina_vegana:kohlrabi_seed")
minetest.register_alias("kohlrabi:wild_kohlrabi", "cucina_vegana:wild_kohlrabi")