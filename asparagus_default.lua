--[[
	**********************************************
	***         Asparagus default              ***
	**********************************************
]]--

-- Load support for intllib.
local S = cucina_vegana.get_translator

local dname = S("Asparagus")
local pname = "asparagus"
local step = 6

-- asparagus
farming.register_plant("cucina_vegana:" .. pname, {
	description = dname .. " " .. S("Seed"),
	inventory_image = "cucina_vegana_" .. pname .. "_seed.png",
	steps = step,
	minlight = cucina_vegana.plant_settings.asparagus_light,
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
					{items = {"cucina_vegana:seed_" .. pname .. " 3"}},
					{items = {"cucina_vegana:" .. pname .. ""}},
				}
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	tiles = {"cucina_vegana_" .. pname .. "_" .. step .. ".png"},
	sunlight_propagates = true,
	groups = {snappy = 3, dig_immediate=1, flammable=2, plant=1, attached_node = 1, growing = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
			},
	},
})

if(cucina_vegana.plant_settings.bonemeal) then
    table.insert(cucina_vegana.plant_settings.bonemeal_list,
								{"cucina_vegana:" .. pname .. "_", step, "cucina_vegana:seed_" .. pname})

end -- if(cucina_vegana.plant_settings.bonemeal

-- Register @ farming_nextgen
if cucina_vegana.farming_ng then
    cucina_vegana.register_farming_ng(pname, step)

end -- if(cucina_vegana.farming_ng

-- Register @ Signs_bot
if(cucina_vegana.signs_bot) then
    
    local fs = signs_bot.register_farming_seed
    local fc = signs_bot.register_farming_crop
	fs("cucina_vegana:seed_"..pname,  "cucina_vegana:seed_" .. pname)
	fc("cucina_vegana:".. pname .. "_" .. step,     "cucina_vegana:" .. pname,         "cucina_vegana:seed_" .. pname)
    
end
