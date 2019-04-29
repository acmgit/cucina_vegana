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
]]--

local plants = {}
local version = "1.8"
cucina_vegana_farming_default = true
cucina_vegana_plant_settings = {}

local modpath = minetest.get_modpath(minetest.get_current_modname())
local modname = minetest.get_current_modname()

dofile(modpath .. "/settingtypes.lua")

-- looking if farming_redo is activ?
if(farming.mod == "redo") then

	cucina_vegana_farming_default = false
    minetest.log("info", "[MOD] " .. modname .. ": farming_redo mode activated.")

else
    
    minetest.log("info", "[MOD] " .. modname .. ": default farming mode activated.")

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
			["rice"] = true,
			["flax"] = true
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
	
	print("[MOD] " .. modname .. " Module: " .. pname .. " loaded.")
    minetest.log("info", "[MOD] " .. modname .. " Module: " .. pname .. " loaded.")
    
end -- for

-- Insert Recipes
dofile(modpath .. "/overrides.lua")
dofile(modpath .. "/nodes.lua")
dofile(modpath .. "/items.lua")
dofile(modpath .. "/fuels.lua")
dofile(modpath .. "/recipes.lua")
dofile(modpath .. "/recipes_cook.lua")
dofile(modpath .. "/recipes_support.lua")
dofile(modpath .. "/recipes_5xx.lua") -- New recipes with MT 5.0
dofile(modpath .. "/register_mods.lua")

if (cucina_vegana_farming_default) then

	print("[MOD] " .. modname .. " Version " .. version .. " in default-mode loaded.")
    minetest.log("info", "[MOD] " .. modname .. " Version " .. version .. " in default-mode loaded.")
    
else

	print("[MOD] " .. modname .. " Version " .. version .. " in redo-mode loaded.")
	minetest.log("info", "[MOD] " .. modname .. " Version " .. version .. " in redo-mode loaded.")
    
end
