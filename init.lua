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
dofile(modpath .. "/register_mods.lua")

if (cucina_vegana_farming_default) then

	print("[MOD] " .. minetest.get_current_modname() .. " Version " .. version .. " in default-mode loaded.")

else

	print("[MOD] " .. minetest.get_current_modname() .. " Version " .. version .. " in redo-mode loaded.")
	
end
