--[[
	**********************************************
	***           Flex default                 ***
	**********************************************
]]--

-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

local dname = S("Peanut")
local pname = "peanut"
local step = 7
local modname = minetest.get_current_modname()

-- flex
farming.register_plant("cucina_vegana:" .. pname, {
	description = dname .. " " .. S("Seed"),
	inventory_image = "cucina_vegana_" .. pname .. "_seed.png",
	steps = step,
	minlight = cucina_vegana_plant_settings.peanut_light,
	fertility = {"grassland"},
	groups = {flammable = 4, attached_node = 1},
})

-- Register for Mapgen
minetest.register_node("cucina_vegana:wild_" .. pname, {
	description = S("Wild") .. " " .. dname,
	paramtype = "light",
	walkable = false,
	drop = { 
			items = { 
					{items = {"cucina_vegana:seed_" .. pname .. " 4"}},
				}
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	tiles = {"cucina_vegana_" .. pname .. "_" .. step .. ".png"},
	groups = {snappy = 3, dig_immediate=1, flammable=2, plant=1, attached_node = 1, growing = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
			},
	},
})

-- Register Recipe for Oil
minetest.register_craft({
	output = "cucina_vegana:" .. pname .. "_oil", 
	recipe = {	{"cucina_vegana:seed_".. pname, "cucina_vegana:seed_".. pname, "cucina_vegana:seed_".. pname},
				{"cucina_vegana:seed_".. pname, "cucina_vegana:seed_".. pname, "cucina_vegana:seed_".. pname},
				{"", "vessels:glass_bottle", ""}
			}
})

if(cucina_vegana_plant_settings.bonemeal) then
    table.insert(cucina_vegana_plant_settings.bonemeal_list,{"cucina_vegana:" .. pname .. "_", step, "cucina_vegana:seed_" .. pname})
    
end -- if(cucina_vegana_plant_settings.bonemeal

if (minetest.get_modpath("farming_nextgen")) then
    farmingNG.register_seed("cucina_vegana:seed_" .. pname, "cucina_vegana:" .. pname .. "_1")
    farmingNG.register_harvest("cucina_vegana:" .. pname .. "_" .. step)
    minetest.log("info", "[MOD] " .. modname .. ": cucina_vegana:seed_" .. pname .. " at farming_nextgen registered.")
    
end
