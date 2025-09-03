--[[
	***************************************
	***              Rice               ***
	***************************************
]]--

-- Load support for intllib.
local S = cucina_vegana.get_translator

local dname = S("Rice")
local pname = "rice"
local step = 6

-- rice
farming.register_plant("cucina_vegana:" .. pname .. "", {
	description = dname .. " " .. S("Seed"),
    harvest_description = dname,
	inventory_image = "cucina_vegana_" .. pname .. "_seed.png",
	steps = step,
	minlight = cucina_vegana.plant_settings.rice_light,
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
					{items = {"cucina_vegana:" .. pname}},
				}
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	tiles = {"cucina_vegana_" .. pname .. "_" .. step .. ".png"},
	sunlight_propagates = true,
	groups = {snappy = 3, dig_immediate=1, flammable=2, plant=1, attached_node = 1,
                growing = 1, not_in_creative_inventory = 1},
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
    cucina_vegana.register_signs_bot(pname, 1, step)

end

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_rainforest_litter", "default:dirt", "default:dirt_with_grass"},
	spawn_by = {"default:water_source", "default:river_water_source",
                "default:water_flowing", "default:river_water_flowing", "default:papyrus", "default:jungletree"},
	--biomes = {"rainforest", "rainforest_swamp", "rainforest_ocean",
    --          "grassland_ocean", "deciduous_forest_shore", "deciduous_forest_ocean", "coniferous_forest_ocean"},
	sidelen = 32,
	noise_params = {
		offset = 0,
		scale = cucina_vegana.plant_settings.rice_scale,
		spread = {x = 40, y = 40, z = 40},
		seed = 56814,
		octaves = 3,
		persist = 0.6
	},
	y_min = -5,
	y_max = 50,
	decoration = "cucina_vegana:wild_rice",
})
