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
		
]]--

local plants = {}
local version = "1.3"

cucina_vegana_farming_default = true

local modpath = minetest.get_modpath(minetest.get_current_modname())

-- looking if farming_redo is activ?
if(farming.mod == "redo") then

	cucina_vegana_farming_default = false
	
end

plants = {

			["soy"] = true,
			["parsley"] = true,
			["lettuce"] = true,
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

if(minetest.get_modpath("technic")) then


	-- Support Compressor
	local compressor_recipes = {
					{"cucina_vegana:sunflower_seeds 6", "cucina_vegana:sunflower_seeds_oil"},
					{"cucina_vegana:lettuce_seed 6", "cucina_vegana:lettuce_oil"},
                    {"cucina_vegana:kohlrabi 6", "cucina_vegana:molasses"},
                    {"cucina_vegana:soy 8", "cucina_vegana:tofu"},
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
        {"cucina_vegana:soy 4", "cucina_vegana:soy_milk"},
	}

	for _, data in ipairs(extractor_recipes) do
		technic.register_extractor_recipe({input = {data[1]}, output = data[2]})
	end
	
    -- Support Alloy_Furnace
    local recipes = {
        {"farming:flour 3",           "cucina_vegana:sunflower_seeds",        "cucina_vegana:sunflower_seeds_bread"},
    }

    for _, data in pairs(recipes) do
        technic.register_alloy_recipe({input = {data[1], data[2]}, output = data[3], time = data[4]})
    end

end -- if(minetest.get_modpath("technic"

if(hunger ~= nil) then
    
    --                    Name                      Saturation      Replace with    Poison  Heal    Sound
    -- crops
    hunger.register_food('cucina_vegana:soy',       1.5,            nil,            nil,    nil,    nil) 
    hunger.register_food('cucina_vegana:parsley',   1.0,            nil,            nil,    nil,    nil)
    hunger.register_food('cucina_vegana:lettuce',   1.5,            nil,            nil,    nil,    nil)
    hunger.register_food('cucina_vegana:chives',    1.0,            nil,            nil,    nil,    nil)
    hunger.register_food('cucina_vegana:rosemary',  1.0,            nil,            nil,    nil,    nil)
    hunger.register_food('cucina_vegana:kohlrabi',  1.5,            nil,            nil,    nil,    nil)
    hunger.register_food('cucina_vegana:asparagus', 1.5,            nil,            nil,    nil,    nil)
    
    -- side dishes
    
    --                    Name                                          Saturation  Replace with            Poison  Heal    Sound
    -- dinners
    hunger.register_food('cucina_vegana:asparagus_hollandaise_cooked',  6,          'cucina_vegana:plate',      nil,    1.5,    nil)
    hunger.register_food('cucina_vegana:asparagus_rice_cooked',         6,          'cucina_vegana:plate',      nil,    1.5,    nil)
    hunger.register_food('cucina_vegana:asparagus_soup_cooked',         4,          'cucina_vegana:plate',      nil,    0.5,    nil)
    hunger.register_food('cucina_vegana:bowl_rice_cooked',              5,          'cucina_vegana:bowl',       nil,    nil,    nil)
    hunger.register_food('cucina_vegana:dandelion_honey',               3,          'vessels:glass_bottle',     nil,    nil,    nil)
    hunger.register_food('cucina_vegana:fish_parsley_rosemary_cooked',  6,          'cucina_vegana:plate',      nil,    1.5,    nil)
    hunger.register_food('cucina_vegana:kohlrabi_roasted',              4,          nil,                        nil,    nil,    nil)
    hunger.register_food('cucina_vegana:kohlrabi_soup_cooked',          5,          'cucina_vegana:plate',      nil,    1.5,    nil)
    hunger.register_food('cucina_vegana:salad_bowl',                    4,          'cucina_vegana:salad_bowl', nil,    nil,    nil)
    hunger.register_food('cucina_vegana:salad_hollandaise',             4,          'cucina_vegana:salad_bowl', nil,    nil,    nil) 
    hunger.register_food('cucina_vegana:sauce_hollandaise',             2,          'vessels:glass_bottle',     nil,    nil,    nil) 
    hunger.register_food('cucina_vegana:soy_milk',                      3,          'vessels:drinking_glass',   nil,    0.5,    nil) 
    hunger.register_food('cucina_vegana:soy_soup_cooked',               4,          'cucina_vegana:plate',      nil,    0.5,    nil) 
    hunger.register_food('cucina_vegana:sunflower_seeds_bread',         5,          nil,                        nil,    0.5,    nil) 
    hunger.register_food('cucina_vegana:sunflower_seeds_roasted',       3,          nil,                        nil,    nil,    nil) 
    hunger.register_food('cucina_vegana:tofu_chives_rosemary_cooked',   4,          'cucina_vegana:plate',      nil,    2.0,    nil)  
    hunger.register_food('cucina_vegana:tofu_cooked',                   4,          nil,                        nil,    nil,    nil) 
    hunger.register_food('cucina_vegana:vegan_sushi',                   5,          nil,                        nil,    1.5,    nil) 
    
end -- hunger

if (cucina_vegana_farming_default) then

	print("[MOD] " .. minetest.get_current_modname() .. " Version " .. version .. " in default-mode loaded.")

else

	print("[MOD] " .. minetest.get_current_modname() .. " Version " .. version .. " in redo-mode loaded.")
	
end
