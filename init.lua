--[[
	**********************************************
	***                        cucina vegana              ***
	**********************************************
	
	If you want use cucina vegana with farming_redo from TenPlus, then set
	farming_default = false
	else true.
	
	if you want to add a Recipt to get additional Soy-Seeds, then set
	additional_seed = true
	else false.
	
]]--

cucina_vegana_farming_default = true

local modpath = minetest.get_modpath(minetest.get_current_modname())

-- looking if farming_redo is activ?
if(farming.mod ~= nil and farming.mod == "redo") then

	cucina_vegana_farming_default = false
	
end


if (cucina_vegana_farming_default) then

	print("[MOD] " .. minetest.get_current_modname() .. " set to default mode.")
	
	-- Vegan Sunflower
	dofile(modpath .. "/sunflower.lua")

	-- Soy
	dofile(modpath .. "/soy_default.lua")
	dofile(modpath .. "/soy.lua")

	-- Parsley
	dofile(modpath .. "/parsley_default.lua")
	dofile(modpath .. "/parsley.lua")

	-- Lettuce
	dofile(modpath .. "/lettuce_default.lua")
	dofile(modpath .. "/lettuce.lua")

	-- Kohlrabi
	dofile(modpath .. "/kohlrabi_default.lua")
	dofile(modpath .. "/kohlrabi.lua")

	-- Chives
	dofile(modpath .. "/chives_default.lua")
	dofile(modpath .. "/chives.lua")
	
	--Rosemary
	dofile(modpath .. "/rosemary_default.lua")
	dofile(modpath .. "/rosemary.lua")
	
else

	print("[MOD] " .. minetest.get_current_modname() .. " set to redo mode.")
	
	-- Vegan Sunflower
	dofile(modpath .. "/sunflower.lua")
	
	-- Soy
	dofile(modpath .. "/soy_redo.lua")
	dofile(modpath .. "/soy.lua")

	-- Parsley
	dofile(modpath .. "/parsley_redo.lua")
	dofile(modpath .. "/parsley.lua")

	-- Lettuce
	dofile(modpath .. "/lettuce_redo.lua")
	dofile(modpath .. "/lettuce.lua")

	-- Kohlrabi
	dofile(modpath .. "/kohlrabi_redo.lua")
	dofile(modpath .. "/kohlrabi.lua")

	-- Chives
	dofile(modpath .. "/chives_redo.lua")
	dofile(modpath .. "/chives.lua")
	
	--Rosemary
	dofile(modpath .. "/rosemary_redo.lua")
	dofile(modpath .. "/rosemary.lua")

	
end -- if( default ....)

-- Insert Recipes
	
dofile(modpath .. "/recipes.lua")


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