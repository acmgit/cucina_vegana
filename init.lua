--[[
	**********************************************
	***             cucina vegana              ***
	**********************************************
	
	if you want to add a Recipt to get additional Soy-Seeds, then set
	additional_seed = true
	else false.
	
]]--

local plants = {}
local modpath = minetest.get_modpath(minetest.get_current_modname())

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
			dofile(modpath .. "/".. pname .. ".lua")
			
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
				}

	for _, data in pairs(compressor_recipes) do

		technic.register_compressor_recipe({input = {data[1]}, output = data[2]})

	end

	-- Support Centrifuge
	local centrifuge_recipes = {
					{ "flowers:sunflower",             "cucina_vegana:sunflower_seeds 4",       "dye:yellow"      },
				}
				
	for _, data in pairs(centrifuge_recipes) do
	
		technic.register_separating_recipe({ input = { data[1] }, output = { data[2], data[3], data[4] } })
		
	end

	-- Support Extractor
	local extractor_recipes = {
		{"flowers:sunflower", "cucina_vegana:sunflower_seeds 4"},
	}

	for _, data in ipairs(extractor_recipes) do
		technic.register_extractor_recipe({input = {data[1]}, output = data[2]})
	end
	
end

	print("[MOD] " .. minetest.get_current_modname() .. " loaded.")
