local modpath = minetest.get_modpath(minetest.get_current_modname())

if(minetest.registered_nodes["flowers:sunflower"]  ~= nil) then
	print("[MOD] " .. minetest.get_current_modname() .. " Sunflowers available.")
	print("[MOD] " .. minetest.get_current_modname() .. " using \"flowers:sunflower\".")

else

	minetest.register_node("cucina_vegana:sunflower_seed", {
		description = "Sunflower Seed",
		tiles = {"cucina_vegana_sunflower_seed.png"},
		inventory_image = "cucina_vegana_sunflower_seed.png",
		wield_image = "cucina_vegana_sunflower_seed.png",
		drawtype = "signlike",
		groups = {seed = 1, snappy = 3, attached_node = 1, dig_immediate=1, flammable = 4},
		paramtype = "light",
		paramtype2 = "wallmounted",
		walkable = false,
		sunlight_propagates = true,
		selection_box = farming.select,
		on_place = function(itemstack, placer, pointed_thing)
			return farming.place_seed(itemstack, placer, pointed_thing, "cucina_vegana:sunflower_1")
		end,
	})

	minetest.register_craftitem("cucina_vegana:sunflower", {
		description = "Sunflower",
		inventory_image = "cucina_vegana_sunflower.png",
		groups = {flammable = 4},
		})
	
	-- sunflower definition
	local crop_def = {
		drawtype = "plantlike",
		tiles = {"cucina_vegana_sunflower_1.png"},
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
	minetest.register_node("cucina_vegana:sunflower_1", table.copy(crop_def))

	-- stage 2
	crop_def.tiles = {"cucina_vegana_sunflower_2.png"}
	minetest.register_node("cucina_vegana:sunflower_2", table.copy(crop_def))

	-- stage 3
	crop_def.tiles = {"cucina_vegana_sunflower_3.png"}
	minetest.register_node("cucina_vegana:sunflower_3", table.copy(crop_def))

	-- stage 4
	crop_def.tiles = {"cucina_vegana_sunflower_4.png"}
	crop_def.drop = {
		items = {
			{items = {"cucina_vegana:sunflower_seed"}, rarity = 2},
		}
	}
	minetest.register_node("cucina_vegana:sunflower_4", table.copy(crop_def))

	-- stage 5
	crop_def.tiles = {"cucina_vegana_sunflower_5.png"}
	crop_def.drop = {
		items = {
			{items = {"cucina_vegana:sunflower_seed"}, rarity = 1},
			{items = {"cucina_vegana:sunflower_seed"}, rarity = 2},
			{items = {"cucina_vegana:sunflower"}, rarity = 1},
			{items = {"cucina_vegana:sunflower"}, rarity = 2}
		}
	}
	minetest.register_node("cucina_vegana:sunflower_5", table.copy(crop_def))

	-- Register for Mapgen
	minetest.register_node("cucina_vegana:wild_sunflower", {
		description = "Wild Sunflower",
		paramtype = "light",
		walkable = false,
		drop = { 
				items = { 
						{items = {"cucina_vegana:sunflower_seed"}},
						{items = {"cucina_vegana:sunflower"}},
					}
				},
		drawtype = "plantlike",
		paramtype2 = "facedir",
		tiles = {"cucina_vegana_sunflower_5.png"},
		groups = {snappy=3, dig_immediate=1, flammable=2, plant=1, attached_node = 1},
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
				},
		},
	})

end
