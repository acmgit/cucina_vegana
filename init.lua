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

local plants = {}

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
			["asparagus"] = true
			
		}
		
if (cucina_vegana_farming_default) then

	print("[MOD] " .. minetest.get_current_modname() .. " set to default mode.")
	
	-- Load all flowers in default-mode
	for pname, value in pairs(plants) do
	
		if(value) then
		
			print(pname .. "_default = loaded.")
			
			dofile(modpath .. "/" .. pname .. "_default.lua")
			dofile(modpath .. "/".. pname .. ".lua")

		end -- if(value)
		
	end -- for

else -- farming_redo is active

	print("[MOD] " .. minetest.get_current_modname() .. " set to redo mode.")
	
	-- Load all flowers in redo-mode.
	for pname, value in pairs(plants) do
	
		if(value) then
		
			print(pname .. "_redo = loaded.")
			
			dofile(modpath .. "/" .. pname .. "_redo.lua")
			dofile(modpath .. "/".. pname .. ".lua")

			
		end -- if(value)
		
	end -- for

end -- if (cucina_vegana_farming_default)

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