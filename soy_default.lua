--[[
	**********************************************
	***             Soy default                ***
	**********************************************
]]--

-- Load support for intllib.
local S = cucina_vegana.get_translator

local dname = S("Soy")
local pname = "soy"
local step = 8

farming.register_plant("cucina_vegana:".. pname, {
	description = dname .. " " .. S("Seed"),
    harvest_description = dname,
	inventory_image = "cucina_vegana_".. pname .. "_seed.png",
	steps = step,
	minlight = cucina_vegana.plant_settings.soy_light,
	fertility = {"grassland"},
	groups = {flammable = 4, attached_node = 1},
})

-- Register for Mapgen
minetest.register_node("cucina_vegana:wild_".. pname, {
	description = S("Wild") .. " " .. dname,
	paramtype = "light",
	walkable = false,
	drop = {
			items = {
					{items = {"cucina_vegana:seed_".. pname .. " 3"}},
					{items = {"cucina_vegana:".. pname}},
				}
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	tiles = {"cucina_vegana_".. pname .. "_".. step .. ".png"},
	sunlight_propagates = true,
	groups = {choppy=2, oddly_breakable_by_hand=3, flammable=2, dig_immediate=1, plant=1, attached_node = 1, growing = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
			},
	},
})


cucina_vegana.add_group("cucina_vegana:seed_"..pname, {seed_soy = 1})

minetest.register_alias("soy:wild_".. pname, "cucina_vegana:wild_".. pname)
minetest.register_alias("soy:".. pname, "cucina_vegana:".. pname)
minetest.register_alias("soy:seed_".. pname, "cucina_vegana:seed_".. pname)

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
    cucina_vegana.register_signs_bot(pname, 1, step)
end
