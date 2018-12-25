--[[
	**********************************************
	***             Cucina Vegana              ***
    ***                                        ***
    ***  Cucina Vegana is a Mod for Minetest   ***
    ***  and supports farming or farming_redo  ***
    ***  by TenPlus.                           ***
    ***                                        ***
    ***  License: LGPL 3.0 by A.C.M.           ***
    ***                                        ***
	**********************************************
	
	If you want use cucina vegana with farming_redo from TenPlus, then set
	farming_default = false
	else true.
	
	if you want to add a Recipt to get additional Soy-Seeds, then set
	additional_seed = true
	else false.
	
]]--

local plants = {}
local version = "1.0"

cucina_vegana_farming_default = true

local modpath = minetest.get_modpath(minetest.get_current_modname())

-- looking if farming_redo is activ?
if(farming.mod ~= nil and farming.mod == "redo") then

	cucina_vegana_farming_default = false
	
end

plants = {

			["soy"] = true,
			["parsley"] = true,
			["lettuce"] =true,
			["chives"] = true,
			["rosemary"] = true,
			["sunflower"] = true,
			["kohlrabi"] = true,
			["asparagus"] = true,
			["rice"] = true
			
		}
		

-- Load all flowers in default-mode
for pname, value in pairs(plants) do
	
	if(value) then
		if (cucina_vegana_farming_default) then
			
			dofile(modpath .. "/" .. pname .. "_default.lua")
			dofile(modpath .. "/".. pname .. ".lua")
			
		else
				
			dofile(modpath .. "/" .. pname .. "_redo.lua")
			dofile(modpath .. "/".. pname .. ".lua")
			
		end -- if(cucina_vegana...)

	end -- if(value)
	
	print("[MOD] " .. minetest.get_current_modname() .. " Module: " .. pname .. " loaded.")
end -- for

-- Insert Recipes
dofile(modpath .. "/nodes.lua")
dofile(modpath .. "/items.lua")
dofile(modpath .. "/fuels.lua")
dofile(modpath .. "/recipes.lua")
dofile(modpath .. "/recipes_cook.lua")
dofile(modpath .. "/recipes_support.lua")
dofile(modpath .. "/overrides.lua")

--   *******************************************
--   *****           Technic-Support             ***** 
--   *******************************************

if (minetest.get_modpath("technic")) then


	-- Support Compressor
	local compressor_recipes = {
					{"cucina_vegana:sunflower_seeds 6", "cucina_vegana:sunflower_seeds_oil"},
					{"cucina_vegana:lettuce_seed 6", "cucina_vegana:lettuce_oil"},
                    {"cucina_vegana:kohlrabi 6", "cucina_vegana:molasses"},
				}

	for _, data in pairs(compressor_recipes) do

		technic.register_compressor_recipe({input = {data[1]}, output = data[2]})

	end

	-- Support Centrifuge
	local centrifuge_recipes = {
					{ "flowers:sunflower",             "cucina_vegana:sunflower_seeds 4",       "dye:yellow"      },
                    { "cucina_vegana:sunflower",       "cucina_vegana:sunflower_seeds 4",       "dye:yellow"      },
                    { "cucina_vegana:kohlrabi 4",      "cucina_vegana:molasses",                "default:leaves"  },
				}
				
	for _, data in pairs(centrifuge_recipes) do
	
		technic.register_separating_recipe({ input = { data[1] }, output = { data[2], data[3], data[4] } })
		
	end

	-- Support Extractor
	local extractor_recipes = {
		{"flowers:sunflower", "cucina_vegana:sunflower_seeds 4"},
        {"cucina_vegana:sunflower", "cucina_vegana:sunflower_seeds 4"},
        {"cucina_vegana:kohlrabi 3", "cucina_vegana:molasses"},
        {"cucina_vegana:molasses", "bushes:sugar 2"},
	}

	for _, data in ipairs(extractor_recipes) do
		technic.register_extractor_recipe({input = {data[1]}, output = data[2]})
	end
	
end


if (cucina_vegana_farming_default) then

	print("[MOD] " .. minetest.get_current_modname() .. " Version " .. version .. " in default-mode loaded.")

else

	print("[MOD] " .. minetest.get_current_modname() .. " Version " .. version .. " in redo-mode loaded.")
	
end
