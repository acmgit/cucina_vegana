minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_rainforest_litter", "default:dirt"},
	spawn_by = {"default:water_source", "default:river_water_source", "default:water_flowing", "default:river_water_flowing", "default:papyrus", "default:jungletree"},
	--biomes = {"rainforest", "rainforest_swamp", "rainforest_ocean", "grassland_ocean", "deciduous_forest_shore", "deciduous_forest_ocean", "coniferous_forest_ocean"},
	sidelen = 32,
	noise_params = {
		offset = 0,
		scale = 0.01,
		spread = {x = 40, y = 40, z = 40},
		seed = 6349,
		octaves = 3,
		persist = 0.6
	},
	y_min = -5,
	y_max = 50,
	decoration = "cucina_vegana:wild_rice",
})

-- Rice
farming.register_plant("cucina_vegana:rice", {
	description = "Rice Seed",
	inventory_image = "cucina_vegana_rice_seed.png",
	steps = 6,
	minlight = 12,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"},
	groups = {flammable = 4, attached_node = 1},
})
	
-- Register for Mapgen
minetest.register_node("cucina_vegana:wild_rice", {
	description = "Wild Rice",
	paramtype = "light",
	walkable = false,
	drop = { 
			items = { 
					{items = {"cucina_vegana:seed_rice 3"}},
					{items = {"cucina_vegana:rice"}},
				}
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	tiles = {"cucina_vegana_rice_6.png"},
	groups = {snappy = 3, dig_immediate=1, flammable=2, plant=1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
			},
	},
})

-- Compatibitily for older Versions
minetest.register_alias("cucina_vegana:rice_seed", "cucina_vegana:seed_rice")

