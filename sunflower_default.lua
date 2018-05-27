local modpath = minetest.get_modpath(minetest.get_current_modname())

-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

if(minetest.registered_nodes["flowers:sunflower"]  ~= nil) then
	print("[MOD] " .. minetest.get_current_modname() .. " Sunflowers available.")
	print("[MOD] " .. minetest.get_current_modname() .. " using \"flowers:sunflower\".")

else

	farming.register_plant("cucina_vegana:sunflower", {
		description = S("Sunflower Seed"),
		inventory_image = "cucina_vegana_sunflower_seed.png",
		steps = 5,
		minlight = 13,
		maxlight = default.LIGHT_MAX,
		fertility = {"grassland"},
		groups = {flammable = 4},
	})
	
	-- Register for Mapgen
	minetest.register_node("cucina_vegana:wild_sunflower", {
		description = S("Wild Sunflower"),
		paramtype = "light",
		walkable = false,
		drop = { 
				items = { 
						{items = {"cucina_vegana:seed_sunflower 2"}},
						{items = {"cucina_vegana:sunflower"}},
					}
				},
		drawtype = "plantlike",
		paramtype2 = "facedir",
		tiles = {"cucina_vegana_sunflower_5.png"},
		sunlight_propagates = true,
		groups = {snappy = 3, dig_immediate=1, flammable=2, plant=1, attached_node = 1},
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
				},
		},
	})

end
