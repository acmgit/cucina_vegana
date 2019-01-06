--   *******************************************
--   *****                 Crafts          ***** 
--   *******************************************

--   *******************************************
--   *****           Supports              *****       
--   *******************************************

minetest.register_craft({
	output = "cucina_vegana:bowl 5",
	recipe = {	{"default:glass", "", "default:glass"},
				{"default:glass", "default:glass", "default:glass"}
			}
})

minetest.register_craft({
	output = "cucina_vegana:pizza_dough",
	recipe = {	{"group:food_milk", "group:food_oil", "group:food_cheese"},
				{"group:food_flour", "group:food_flour", "group:food_flour"}
			},
    replacements = {
                    {"group:food_milk", "vessels:glass_bottle"},
                    {"group:food_oil", "vessels:glass_bottle"},
                    }
})

minetest.register_craft({
	output = "cucina_vegana:pizza_vegana_raw",
	recipe = {	{"", "cucina_vegana:sauce_hollandaise", ""},
				{"cucina_vegana:asparagus", "cucina_vegana:lettuce", "cucina_vegana:rosemary"},
                {"", "cucina_vegana:pizza_dough", ""}
			},
    replacements = {
                        {"cucina_vegana:sauce_hollandaise", "vessels:glass_bottle"},
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
	output = "cucina_vegana:dandelion_suds",
	recipe = {	{"flowers:dandelion_yellow", "flowers:dandelion_yellow", "flowers:dandelion_yellow"},
				{"flowers:dandelion_yellow", "flowers:dandelion_yellow", "flowers:dandelion_yellow"},
                {"", "bucket:bucket_water", ""}
			}
})

minetest.register_craft({
	output = "cucina_vegana:dandelion_suds",
	recipe = {	{"flowers:dandelion_yellow", "flowers:dandelion_yellow", "flowers:dandelion_yellow"},
				{"flowers:dandelion_yellow", "flowers:dandelion_yellow", "flowers:dandelion_yellow"},
                {"", "bucket:bucket_river_water", ""}
			}
})

minetest.register_craft({
	output = "cucina_vegana:sunflower_seeds_flour",
	recipe = {	{"default:stone", "default:stone", "default:stone"},
				{"cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds"},
                {"default:cobble", "default:cobble", "default:cobble"}
			},
    replacements = {
                {"default:stone", "default:stone 3"},
                {"default:cobble", "default:cobble 3"}
            }

})

minetest.register_craft({
	output = "cucina_vegana:sunflower_seeds_flour",
	recipe = {	{"default:stone", "default:stone", "default:stone"},
				{"cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds"},
                {"default:desert_cobble", "default:desert_cobble", "default:desert_cobble"}
			},
    replacements = {
                {"default:stone", "default:stone 3"},
                {"default:desert_cobble", "default:desert_cobble 3"}
            }

})

minetest.register_craft({
	output = "cucina_vegana:sunflower_seeds_flour",
	recipe = {	{"default:desert_stone", "default:desert_stone", "default:desert_stone"},
				{"cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds"},
                {"default:cobble", "default:cobble", "default:cobble"}
			},
    replacements = {
                {"default:desert_stone", "default:desert_stone 3"},
                {"default:cobble", "default:cobble 3"}
            }

})

minetest.register_craft({
	output = "cucina_vegana:sunflower_seeds_flour",
	recipe = {	{"default:desert_stone", "default:desert_stone", "default:desert_stone"},
				{"cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds"},
                {"default:desert_cobble", "default:desert_cobble", "default:desert_cobble"}
			},
    replacements = {
                {"default:desert_stone", "default:desert_stone 3"},
                {"default:desert_cobble", "default:desert_cobble 3"}
            }

})

minetest.register_craft({
	output = "cucina_vegana:rice_flour",
	recipe = {	{"default:stone", "default:stone", "default:stone"},
				{"cucina_vegana:rice", "cucina_vegana:rice", "cucina_vegana:rice"},
                {"default:cobble", "default:cobble", "default:cobble"}
			},
    replacements = {
                {"default:stone", "default:stone 3"},
                {"default:cobble", "default:cobble 3"}
            }

})

minetest.register_craft({
	output = "cucina_vegana:rice_flour",
	recipe = {	{"default:desert_stone", "default:desert_stone", "default:desert_stone"},
				{"cucina_vegana:rice", "cucina_vegana:rice", "cucina_vegana:rice"},
                {"default:cobble", "default:cobble", "default:cobble"}
			},
    replacements = {
                {"default:desert_stone", "default:desert_stone 3"},
                {"default:cobble", "default:cobble 3"}
            }

})

minetest.register_craft({
	output = "cucina_vegana:rice_flour",
	recipe = {	{"default:desert_stone", "default:desert_stone", "default:desert_stone"},
				{"cucina_vegana:rice", "cucina_vegana:rice", "cucina_vegana:rice"},
                {"default:desert_cobble", "default:desert_cobble", "default:desert_cobble"}
			},
    replacements = {
                {"default:desert_stone", "default:desert_stone 3"},
                {"default:desert_cobble", "default:desert_cobble 3"}
            }

})

minetest.register_craft({
	output = "cucina_vegana:rice_flour",
	recipe = {	{"default:stone", "default:stone", "default:stone"},
				{"cucina_vegana:rice", "cucina_vegana:rice", "cucina_vegana:rice"},
                {"default:desert_cobble", "default:desert_cobble", "default:desert_cobble"}
			},
    replacements = {
                {"default:stone", "default:stone 3"},
                {"default:cobble", "default:cobble 3"}
            }

})

--   *******************************************
--   *****           Imitations            *****       
--   *******************************************

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
	output = "cucina_vegana:imitation_meat",
	recipe = {	{"dye:red", "cucina_vegana:tofu", "dye:white"},
				{"", "cucina_vegana:tofu", ""},
				{"", "cucina_vegana:tofu", ""}
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
	output = "cucina_vegana:tofu",
	recipe = {
			{"cucina_vegana:soy", "cucina_vegana:soy", "cucina_vegana:soy"},
			{"cucina_vegana:soy", "cucina_vegana:soy", "cucina_vegana:soy"},
			{"cucina_vegana:soy", "cucina_vegana:soy", "cucina_vegana:soy"},
		},
})

--   *******************************************
--   *****       Síde Dishes               *****       
--   *******************************************

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
	output = "cucina_vegana:dandelion_honey",
	recipe = {	{"cucina_vegana:dandelion_suds_cooking", "", ""},
				{"vessels:glass_bottle", "", ""}
			},
    replacements = {
            {"cucina_vegana:dandelion_suds_cooking", "bucket:bucket_empty"}
                   }
})

minetest.register_craft({
	output = "cucina_vegana:sauce_hollandaise",
	recipe = {	{"cucina_vegana:parsley", "group:food_butter", "cucina_vegana:rosemary"},
				{"", "cucina_vegana:soy_milk", ""},
				{"", "vessels:glass_bottle", ""}
			},
    replacements = {
            {"cucina_vegana:soy_milk", "vessels:glass_bottle"}
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
	output = "cucina_vegana:molasses",
	recipe = {	
				{"", "default:stick", ""},
				{"cucina_vegana:kohlrabi", "vessels:drinking_glass", "cucina_vegana:kohlrabi"},
                {"", "bucket:bucket_water", ""},
			},
			replacements = {
							{"bucket:bucket_water", "bucket:bucket_empty"},
						}
})

minetest.register_craft({
	output = "cucina_vegana:molasses",
	recipe = {	
				{"", "default:stick", ""},
				{"cucina_vegana:kohlrabi", "vessels:drinking_glass", "cucina_vegana:kohlrabi"},
                {"", "bucket:bucket_river_water", ""},
			},
			replacements = {
							{"bucket:bucket_river_water", "bucket:bucket_empty"},
						}
})
                        
--   *******************************************
--   *****           Dinners               *****       
--   *******************************************

minetest.register_craft({
	output = "cucina_vegana:asparagus_hollandaise",
	recipe = {	{"cucina_vegana:asparagus", "cucina_vegana:sauce_hollandaise", "cucina_vegana:parsley"},
				{"", "group:food_plate", ""}
			},
			replacements = {	{"group:food_sauce", "vessels:glass_bottle"},
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
	type = "shapeless",
	output = "cucina_vegana:sunflower_seeds 4",
	recipe = {"flowers:sunflower"},
	replacements = {
		{"flowers:sunflower", "dye:yellow"}
	}
})

minetest.register_craft({
	output = "cucina_vegana:sunflower_seeds_dough",
	recipe = {	{"", "cucina_vegana:sunflower_seeds", ""},
				{"farming:flour", "farming:flour", "farming:flour"}
			}
})

minetest.register_craft({
	output = "cucina_vegana:sunflower_seeds_dough",
	recipe = {	{"", "cucina_vegana:sunflower_seeds", ""},
				{"group:food_flour", "group:food_flour", "group:food_flour"}
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
	output = "cucina_vegana:vegan_sushi",
	recipe = {	{"cucina_vegana:imitation_fish", "cucina_vegana:bowl_rice", ""},
				{"default:papyrus", "", ""}
			},
})

