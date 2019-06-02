--[[
	**********************************************
	***           Sunflower redo               ***
	**********************************************
]]--

local modpath = minetest.get_modpath(minetest.get_current_modname())

-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

local dname = S("Sunflower")
local pname = "sunflower"
local step = 5
local modname = minetest.get_current_modname()

if(minetest.registered_nodes["flowers:sunflower"]  ~= nil) then
	print("[MOD] " .. modname .. " Sunflowers available.")
	print("[MOD] " .. modname .. " using \"flowers:sunflower\".")
    minetest.log("info", "[MOD] " .. modname .. ": Sunflowers available. Using \"flowers:sunflower\".")

else

	minetest.register_node("cucina_vegana:" .. pname .. "_seed", {
		description = dname .. " " .. S("Seed"),
		tiles = {"cucina_vegana_" .. pname .. "_seed.png"},
		inventory_image = "cucina_vegana_" .. pname .. "_seed.png",
		wield_image = "cucina_vegana_" .. pname .. "_seed.png",
		drawtype = "signlike",
		minlight = cucina_vegana_plant_settings.sunflower_light,
        groups = {seed = 1, snappy = 3, attached_node = 1, dig_immediate=1, flammable = 4},
		paramtype = "light",
		paramtype2 = "wallmounted",
		walkable = false,
		sunlight_propagates = true,
		selection_box = farming.select,
		on_place = function(itemstack, placer, pointed_thing)
			return farming.place_seed(itemstack, placer, pointed_thing, "cucina_vegana:" .. pname .. "_1")
		end,
	})
	
	-- sunflower definition
	local crop_def = {
		drawtype = "plantlike",
		tiles = {"cucina_vegana_" .. pname .. "_1.png"},
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
        waving = 1,
		buildable_to = true,
		drop =  "",
		minlight = 13,
		selection_box = farming.select,
		groups = {
			flammable = 4, snappy=3, dig_immediate=1, plant = 1, attached_node = 1,
			not_in_creative_inventory = 1, growing = 1
		},
		sounds = default.node_sound_leaves_defaults()
	}

	-- stage 1
	minetest.register_node("cucina_vegana:" .. pname .. "_1", table.copy(crop_def))

	-- stage 2
	crop_def.tiles = {"cucina_vegana_" .. pname .. "_2.png"}
	minetest.register_node("cucina_vegana:" .. pname .. "_2", table.copy(crop_def))

	-- stage 3
	crop_def.tiles = {"cucina_vegana_" .. pname .. "_3.png"}
	minetest.register_node("cucina_vegana:" .. pname .. "_3", table.copy(crop_def))

	-- stage 4
	crop_def.tiles = {"cucina_vegana_" .. pname .. "_4.png"}
	crop_def.drop = {
		items = {
			{items = {"cucina_vegana:" .. pname .. "_seed"}, rarity = 2},
		}
	}
	minetest.register_node("cucina_vegana:" .. pname .. "_4", table.copy(crop_def))

	-- stage 5
	crop_def.tiles = {"cucina_vegana_" .. pname .. "_5.png"}
	crop_def.drop = {
		items = {
			{items = {"cucina_vegana:" .. pname .. "_seed"}, rarity = 1},
			{items = {"cucina_vegana:" .. pname .. "_seed"}, rarity = 2},
			{items = {"cucina_vegana:" .. pname .. ""}, rarity = 1},
			{items = {"cucina_vegana:" .. pname .. ""}, rarity = 2}
		}
	}
	minetest.register_node("cucina_vegana:" .. pname .. "_5", table.copy(crop_def))

	-- Register for Mapgen
	minetest.register_node("cucina_vegana:wild_" .. pname, {
		description = S("Wild " .. dname),
		paramtype = "light",
		walkable = false,
		drop = { 
				items = { 
						{items = {"cucina_vegana:" .. pname .. "_seed"}},
						{items = {"cucina_vegana:" .. pname .. ""}},
					}
				},
		drawtype = "plantlike",
		paramtype2 = "facedir",
		tiles = {"cucina_vegana_" .. pname .. "_5.png"},
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

if(cucina_vegana_plant_settings.bonemeal) then
    table.insert(cucina_vegana_plant_settings.bonemeal_list,{"cucina_vegana:" .. pname .. "_", step, "cucina_vegana:" .. pname .. "_seed"})
    
end -- if(cucina_vegana_plant_settings.bonemeal

if (minetest.get_modpath("farming_nextgen")) then
    farmingNG.register_seed("cucina_vegana:" .. pname .. "_seed", "cucina_vegana:" .. pname .. "_1")
    farmingNG.register_harvest("cucina_vegana:" .. pname .. "_" .. step)
    minetest.log("info", "[MOD] " .. modname .. ": cucina_vegana:seed_" .. pname .. " at farming_nextgen registered.")
    
end
