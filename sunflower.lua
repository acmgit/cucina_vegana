-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

local modpath = minetest.get_modpath(minetest.get_current_modname())

if(minetest.registered_nodes["flowers:sunflower"]  ~= nil) then
	print("[MOD] " .. minetest.get_current_modname() .. " Sunflowers available.")
	print("[MOD] " .. minetest.get_current_modname() .. " using \"flowers:sunflower\".")

else

	print("[MOD] " .. minetest.get_current_modname() .. " no Sunflowers available.")
	print("[MOD] " .. minetest.get_current_modname() .. " use own Sunflowers.")

	
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass", "default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.01,
			spread = {x = 10, y = 10, z = 10},
			seed = 7133,
			octaves = 3,
			persist = 0.6
		},
		y_min = 0,
		y_max = 150,
		decoration = "cucina_vegana:wild_sunflower",
		})
	
	minetest.register_alias("flowers:sunflower", "cucina_vegana:sunflower")

	farming.register_plant("cucina_vegana:sunflower", {
		description = S("Sunflower Seed"),
		inventory_image = "cucina_vegana_sunflower_seed.png",
		steps = 5,
		minlight = 13,
		maxlight = default.LIGHT_MAX,
		fertility = {"grassland"},
		groups = {flammable = 4, attached_node = 1},
	})
	
	-- Register for Mapgen
	minetest.register_node("cucina_vegana:wild_sunflower", {
		description = S("Wild Sunflower"),
        paramtype = "light",
		walkable = false,
	drop = { 
			items = { 
                    {items = {"cucina_vegana:seed_sunflower 2"}, rarity = 1},
					{items = {"cucina_vegana:seed_sunflower 2"}, rarity = 2},
					{items = {"cucina_vegana:sunflower 2"}, rarity = 1},
                    {items = {"cucina_vegana:sunflower 2"}, rarity = 2},
                    },
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
    
	-- Convert Redo-Seeds
    minetest.register_alias("cucina_vegana:sunflower_seed", "cucina_vegana:seed_sunflower")

end

-- to import the old mod in cucina_vegana
-- can deleted if you have a clean world.

minetest.register_alias("vegan_sunflower:seeds_dough", "cucina_vegana:sunflower_seeds_dough")
minetest.register_alias("vegan_sunflower:seeds", "cucina_vegana:sunflower_seeds")
minetest.register_alias("vegan_sunflower:seeds_oil", "cucina_vegana:sunflower_seeds_oil")
minetest.register_alias("vegan_sunflower:seeds_roasted", "cucina_vegana:sunflower_seeds_roasted")
minetest.register_alias("vegan_sunflower:seeds_bread", "cucina_vegana:sunflower_seeds_bread")
