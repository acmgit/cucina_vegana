--[[
	**********************************************
	***          Sunflower default             ***
	**********************************************
]]--

-- Load support for intllib.
local S = cucina_vegana.get_translator

local dname = S("Sunflower")
local pname = "sunflower"
local step = 5
local modname = minetest.get_current_modname()

if(minetest.registered_nodes["flowers:sunflower"]  ~= nil) then
	print("[MOD] " .. modname .. " Sunflowers available.")
	print("[MOD] " .. modname .. " using \"flowers:sunflower\".")
    minetest.log("info", "[MOD] " .. modname .. ": Sunflowers available. Using \"flowers:sunflower\".")

else

	farming.register_plant("cucina_vegana:" .. pname, {
		description = dname .. " " .. S("Seed"),
		inventory_image = "cucina_vegana_" .. pname .. "_seed.png",
		steps = step,
		minlight = cucina_vegana.plant_settings.sunflower_light,
		fertility = {"grassland"},
		groups = {flammable = 4},
	})

	-- Register for Mapgen
	minetest.register_node("cucina_vegana:wild_" .. pname, {
		description = S("Wild") .. " " .. dname,
		paramtype = "light",
		walkable = false,
		drop = {
				items = {
						{items = {"cucina_vegana:seed_" .. pname .. " 2"}},
						{items = {"cucina_vegana:" .. pname .. ""}},
					}
				},
		drawtype = "plantlike",
		paramtype2 = "facedir",
		tiles = {"cucina_vegana_" .. pname .. "_" .. step .. ".png"},
		sunlight_propagates = true,
		groups = {snappy = 3, dig_immediate=1, flammable=2, plant=1, attached_node = 1, growing = 1},
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
				},
		},
	})

end

if(cucina_vegana.plant_settings.bonemeal) then
    table.insert(cucina_vegana.plant_settings.bonemeal_list,
                 {"cucina_vegana:" .. pname .. "_", step, "cucina_vegana:seed_" .. pname})

end -- if(cucina_vegana.plant_settings.bonemeal

if (minetest.get_modpath("farming_nextgen")) then
    farmingNG.register_seed("cucina_vegana:seed_" .. pname, "cucina_vegana:" .. pname .. "_1")
    farmingNG.register_harvest("cucina_vegana:" .. pname .. "_" .. step .. "")
    minetest.log("info", "[MOD] " .. modname .. ": cucina_vegana:seed_" .. pname .. " at farming_nextgen registered.")

end
