--[[
	**********************************************
	***             Cucina Vegana              ***
    ***                                        ***
    ***  Cucina Vegana is a Mod for Luanti     ***
    ***  and supports farming or farming_redo  ***
    ***  by TenPlus.                           ***
    ***                                        ***
    ***  License: LGPL 3.0 by A.C.M.           ***
    ***                                        ***
	**********************************************
]]--

cucina_vegana = {}
cucina_vegana.lib = {}
cucina_vegana.version = "3.6"
cucina_vegana.farming_default = true
cucina_vegana.settings = {}
cucina_vegana.plant_settings = {}
cucina_vegana.shrub_settings = {}
cucina_vegana.plant_settings.bonemeal_list = {}
cucina_vegana.farming_ng = core.get_modpath("farming_nextgen")
cucina_vegana.signs_bot = core.get_modpath("signs_bot")
cucina_vegana.register_signs_bot = nil
cucina_vegana.plant_settings.germ_launch = 0
cucina_vegana.modname = core.get_current_modname()

local modpath = core.get_modpath(core.get_current_modname())
local modname = cucina_vegana.modname

local has_bonemeal = core.get_modpath("bonemeal")
local has_maidroid = core.get_modpath("maidroid")

local S

if core.get_modpath("intllib") then
    S = dofile(modpath .."/intllib.lua")
    core.log("info","[MOD] " .. modname .. ": translating in intllib-mode.")

elseif core.get_translator ~= nil then
    S = core.get_translator("cucina_vegana")
    core.log("info", "[MOD] " .. modname .. ": translating in minetest-mode.")

else
    S = function (s) return s end
end

cucina_vegana.get_translator = S

dofile(modpath .. "/settings.lua")
dofile(modpath .. "/tools.lua")
dofile(modpath .. "/lib.lua")

if cucina_vegana.signs_bot then
	dofile(modpath .. "/register_signs_bot.lua")
end

-- looking if farming_redo is really activ? ... \/('')\/
if farming.mod ~= nil and farming.mod == "redo" then
	cucina_vegana.farming_default = false
    core.log("info", "[MOD] " .. modname .. ": farming_redo mode activated.")

else
    core.log("info", "[MOD] " .. modname .. ": default farming mode activated.")
end

-- Enable support for bonemeal mod only if it is installed
cucina_vegana.plant_settings.bonemeal = has_bonemeal or has_maidroid

if has_bonemeal then
    bonemeal:add_crop(cucina_vegana.plant_settings.bonemeal_list)
end

local plants = {
	["asparagus"] = cucina_vegana.plant_settings.asparagus,
	["chives"] = cucina_vegana.plant_settings.chives,
	["flax"] = cucina_vegana.plant_settings.flax,
	["kohlrabi"] = cucina_vegana.plant_settings.kohlrabi,
	["lettuce"] = cucina_vegana.plant_settings.lettuce,
	["parsley"] = cucina_vegana.plant_settings.parsley,
    ["peanut"] = cucina_vegana.plant_settings.peanut,
    ["rosemary"] = cucina_vegana.plant_settings.rosemary,
	["rice"] = cucina_vegana.plant_settings.rice,
	["soy"] = cucina_vegana.plant_settings.soy,
	["sunflower"] = cucina_vegana.plant_settings.sunflower,
    ["banana"] = cucina_vegana.plant_settings.banana,
    ["tomato"] = cucina_vegana.plant_settings.tomato,
    ["potato"] = cucina_vegana.plant_settings.potato,
    ["carrot"] = cucina_vegana.plant_settings.carrot,
    ["garlic"] = cucina_vegana.plant_settings.garlic,
    ["chili"] = cucina_vegana.plant_settings.chili,
    ["onion"] = cucina_vegana.plant_settings.onion,
    ["cucumber"] = cucina_vegana.plant_settings.cucumber,
    ["strawberry"] = cucina_vegana.plant_settings.strawberry,
	["corn"] = cucina_vegana.plant_settings.corn
}

for pname, value in pairs(plants) do
	if value then
		local n_default = modname .. ":seed_" .. pname
		local n_redo    = modname .. ":" .. pname .. "_seed"

        -- Load all flowers in default-mode
		dofile(modpath .. "/" .. pname .. ".lua")

		core.register_alias(n_redo, n_default)
	end

    core.log("info", "[MOD] " .. modname .. " Module: " .. pname .. " loaded.")
end

local shrubs = {
	["vine"] = cucina_vegana.shrub_settings.vine,
	["coffee"] = cucina_vegana.shrub_settings.coffee
}

for sname, value in pairs(shrubs) do
	if value then
		dofile(modpath .. "/" .. sname .. "_def.lua")
		dofile(modpath .. "/" .. sname .. ".lua")
	    core.log("info", "[MOD] " .. modname .. " Module: " .. sname .. " loaded.")
	end
end

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
dofile(modpath .. "/aliases.lua")

core.log("info", "[MOD] " .. modname .. " Version " .. cucina_vegana.version .. " loaded.")
