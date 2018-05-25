--   *******************************************
--   *****    Crafts                       ***** 
--   *******************************************

minetest.register_craft({
	output = "cucina_vegana:sauce_hollandaise",
	recipe = {	{"cucina_vegana:parsley", "group:food_butter", "cucina_vegana:rosemary"},
				{"", "cucina_vegana:soy_milk", ""},
				{"", "vessels:glass_bottle", ""}
			}
})


minetest.register_craft({
    output = "cucina_vegana:lettuce_oil",
    recipe = {	{"cucina_vegana:seed_lettuce", "cucina_vegana:seed_lettuce", "cucina_vegana:seed_lettuce"},
                {"cucina_vegana:seed_lettuce", "cucina_vegana:seed_lettuce", "cucina_vegana:seed_lettuce"},
                {"", "vessels:glass_bottle", ""}
            }
})

minetest.register_craft({
	output = "cucina_vegana:sunflower_seeds_oil",
	recipe = {	{"cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds"},
				{"cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds"},
				{"", "vessels:glass_bottle", ""}
			}
})


minetest.register_craft({
	output = "cucina_vegana:sunflower_seeds_dough",
	recipe = {	{"", "cucina_vegana:sunflower_seeds", ""},
				{"farming:flour", "farming:flour", "farming:flour"}
			}
})

minetest.register_craft({
	type = "shapeless",
	output = "cucina_vegana:sunflower_seeds 4",
	recipe = {"flowers:sunflower"},
	replacements = {
		{"flowers:sunflower", "dye:yellow"}
	}
})

minetest.register_craft({
	output = "cucina_vegana:tofu",
	recipe = {
			{"cucina_vegana:soy", "cucina_vegana:soy", "cucina_vegana:soy"},
			{"cucina_vegana:soy", "cucina_vegana:soy", "cucina_vegana:soy"},
			{"cucina_vegana:soy", "cucina_vegana:soy", "cucina_vegana:soy"},
		},
})

minetest.register_craft({
	output = "cucina_vegana:soy_milk",
	recipe = {
			{"cucina_vegana:soy", "cucina_vegana:soy", "cucina_vegana:soy"},
			{"", "cucina_vegana:soy", ""},
			{"", "vessels:drinking_glass", ""},
		},
})

minetest.register_craft({
	output = "cucina_vegana:bowl 5",
	recipe = {	{"default:glass", "", "default:glass"},
				{"default:glass", "default:glass", "default:glass"}
			}
})

minetest.register_craft({
	output = "cucina_vegana:plate 5",
	recipe = {	{"group:wood", "", "group:wood"},
				{"group:wood", "group:wood", "group:wood"}
			}
})

minetest.register_craft({
	output = "cucina_vegana:plate 2",
	recipe = {	{"default:clay_lump", "", "default:clay_lump"},
				{"default:clay_lump", "default:clay_lump", "default:clay_lump"}
			}
})

minetest.register_craft({
	output = "cucina_vegana:plate 10",
	recipe = {	{"default:steel_ingot", "", "default:steel_ingot"},
				{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"}
			}
})

minetest.register_craft({
	output = "cucina_vegana:plate 10",
	recipe = {	{"default:copper_ingot", "", "default:copper_ingot"},
				{"default:copper_ingot", "default:copper_ingot", "default:copper_ingot"}
			}
})

minetest.register_craft({
	output = "cucina_vegana:plate 10",
	recipe = {	{"default:tin_ingot", "", "default:tin_ingot"},
				{"default:tin_ingot", "default:tin_ingot", "default:tin_ingot"}
			}
})


minetest.register_craft({
	output = "cucina_vegana:salad_bowl",
	recipe = {	{"cucina_vegana:parsley", "cucina_vegana:lettuce", "cucina_vegana:chives"},
				{"", "group:food_oil", ""},
				{"", "group:food_bowl", ""}
			}
})

minetest.register_craft({
	output = "cucina_vegana:salad_hollandaise",
	recipe = {
				{"cucina_vegana:sauce_hollandaise", "cucina_vegana:salad_bowl", ""}
			},
	replacements = {
				{"cucina_vegana:sauce_hollandaise", "vessels:glass_bottle"},
			}
})

minetest.register_craft({
	output = "cucina_vegana:kohlrabi_soup",
	recipe = {	{"cucina_vegana:kohlrabi", "group:food_oil", "cucina_vegana:parsley"},
				{"", "bucket:bucket_water", ""},
				{"", "group:food_plate", ""}
			},
			replacements = {{"bucket:bucket_water", "bucket:bucket_empty"},
						   {"group:food_oil", "vessels:glass_bottle"},
						}
})

minetest.register_craft({
	output = "cucina_vegana:kohlrabi_soup",
	recipe = {	{"cucina_vegana:kohlrabi", "group:food_oil", "cucina_vegana:parsley"},
				{"", "bucket:bucket_river_water", ""},
				{"", "group:food_plate", ""}
			},
			replacements = {{"bucket:bucket_river_water", "bucket:bucket_empty"},
						   {"group:food_oil", "vessels:glas_bottle"},
						}
})

minetest.register_craft({
	output = "cucina_vegana:soy_soup",
	recipe = {	{"cucina_vegana:chives", "group:food_oil", "cucina_vegana:parsley"},
				{"", "cucina_vegana:soy_milk", ""},
				{"", "group:food_plate", ""}
			},
			replacements = {{"group:food_milk", "vessels:glass_bottle"},
						   {"group:food_oil", "vessels:glass_bottle"},
						}
})

minetest.register_craft({
	output = "cucina_vegana:asparagus_soup",
	recipe = {	{"cucina_vegana:chives", "group:food_oil", "cucina_vegana:asparagus"},
				{"", "cucina_vegana:soy_milk", ""},
				{"", "group:food_plate", ""}
			},
			replacements = {{"group:food_milk", "vessels:glass_bottle"},
						   {"group:food_oil", "vessels:glass_bottle"},
						}
})

minetest.register_craft({
	output = "cucina_vegana:asparagus_hollandaise",
	recipe = {	{"cucina_vegana:asparagus", "cucina_vegana:sauce_hollandaise", "cucina_vegana:parsley"},
				{"", "group:food_plate", ""}
			},
			replacements = {	{"group:food_sauce", "vessels:glass_bottle"},
						}
})

minetest.register_craft({
	output = "cucina_vegana:tofu_chives_rosemary",
	recipe = {	{"cucina_vegana:chives", "", "cucina_vegana:rosemary"},
				{"", "cucina_vegana:tofu", ""},
				{"", "group:food_plate", ""}
			},
})

minetest.register_craft({
	output = "cucina_vegana:tofu_chives_rosemary_cooked",
	recipe = {	{"cucina_vegana:chives", "", "cucina_vegana:rosemary"},
				{"", "cucina_vegana:tofu_cooked", ""},
				{"", "group:food_plate", ""}
			},
})

minetest.register_craft({
	output = "cucina_vegana:imitation_meat",
	recipe = {	{"dye:red", "cucina_vegana:tofu", "dye:white"},
				{"", "cucina_vegana:tofu", ""},
				{"", "cucina_vegana:tofu", ""}
			},
})

minetest.register_craft({
	output = "cucina_vegana:imitation_butter",
	recipe = {	{"dye:yellow", "cucina_vegana:soy_milk",  "cucina_vegana:soy_milk"}
			},
			replacements = {{"cucina_vegana:soy_milk", "vessels:drinking_glass 2"}
						}
})

minetest.register_craft({
	output = "cucina_vegana:imitation_cheese",
	recipe = {	{"dye:orange","cucina_vegana:imitation_butter", "cucina_vegana:imitation_butter", ""}
			},
})

minetest.register_craft({
	output = "cucina_vegana:imitation_fish",
	recipe = {	
				{"dye:blue","cucina_vegana:tofu", "dye:blue"},
				{"cucina_vegana:tofu","cucina_vegana:tofu", "cucina_vegana:tofu"},
				{"","cucina_vegana:tofu", ""},
			
			},
})


minetest.register_craft({
	output = "cucina_vegana:fish_parsley_rosemary",
	recipe = {	
				{"cucina_vegana:parsley","group:food_oil", "cucina_vegana:rosemary"},
				{"","group:food_fish", ""},
				{"","group:food_plate", ""},
			},
			replacements = {
							{"group:food_oil", "vessels:glass_bottle"},
						}
})

minetest.register_craft({
	output = "cucina_vegana:bowl_rice",
	recipe = {	
				{"cucina_vegana:rice"},
				{"bucket:bucket_water"},
				{"group:food_bowl"},
			},
			replacements = {
							{"bucket:bucket_water", "bucket:bucket_empty"},
						}
})

minetest.register_craft({
	output = "cucina_vegana:bowl_rice",
	recipe = {	
				{"cucina_vegana:rice"},
				{"bucket:bucket_river_water"},
				{"group:food_bowl"},
			},
			replacements = {
							{"bucket:bucket_river_water", "bucket:bucket_empty"},
						}
})

minetest.register_craft({
	output = "cucina_vegana:asparagus_rice",
	recipe = {	
				{"cucina_vegana:asparagus", "group:food_rice", "group:food_butter"},
				{"", "group:food_plate", ""}
			},
			replacements = {
							{"group:food_rice", "cucina_vegana:bowl"},
						}
})
