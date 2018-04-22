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

cucina_vegana = {}


local farming_default = true
local modpath = minetest.get_modpath(minetest.get_current_modname())

-- looking if farming_redo is activ?
if(farming.mod ~= nil and farming.mod == "redo") then

	farming_default = false
	
end


-- Switch true to use the Recipe for additional Seeds.
cucina_vegana.additional_seeds = true

if (farming_default) then

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
	
end -- if( default ....)


print("[MOD] " .. minetest.get_current_modname() .. " loaded.")