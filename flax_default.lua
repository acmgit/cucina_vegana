--[[
	**********************************************
	***           Flex default                 ***
	**********************************************
]]--

-- Load support for intllib.
local S = cucina_vegana.get_translator

local dname = S("Flax")
local pname = "flax"
local step = 6

-- flex
farming.register_plant("cucina_vegana:" .. pname, {
	description = dname .. " " .. S("Seed"),
    harvest_description = dname,
	inventory_image = "cucina_vegana_" .. pname .. "_seed.png",
	steps = step,
	minlight = cucina_vegana.plant_settings.flax_light,
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
					{items = {"cucina_vegana:seed_" .. pname .. " 4"}},
					{items = {"cucina_vegana:" .. pname .. " 2"}},
				}
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	tiles = {"cucina_vegana_" .. pname .. "_" .. step .. ".png"},
	groups = {snappy = 3, dig_immediate=1, flammable=2, plant=1, attached_node = 1, growing = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
			},
	},
})

cucina_vegana.add_group("cucina_vegana:seed_" .. pname, {seed_flax = 1})

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

minetest.register_alias("cucina_vegana:flex_1", "cucina_vegana:" .. pname .. "_1")
minetest.register_alias("cucina_vegana:flex_2", "cucina_vegana:" .. pname .. "_2")
minetest.register_alias("cucina_vegana:flex_3", "cucina_vegana:" .. pname .. "_3")
minetest.register_alias("cucina_vegana:flex_4", "cucina_vegana:" .. pname .. "_4")
minetest.register_alias("cucina_vegana:flex_5", "cucina_vegana:" .. pname .. "_5")
minetest.register_alias("cucina_vegana:flex_6", "cucina_vegana:" .. pname .. "_" .. step)
minetest.register_alias("cucina_vegana:wild_flex", "cucina_vegana:wild_" .. pname)
minetest.register_alias("cucina_vegana:seed_flex", "cucina_vegana:seed_" .. pname)
minetest.register_alias("cucina_vegana:flex_raw", "cucina_vegana:" .. pname)
