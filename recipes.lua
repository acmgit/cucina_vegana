--   *******************************************
--   *****                 Crafts          *****
--   *******************************************

--   *******************************************
--   *****           Supports              *****
--   *******************************************

minetest.register_craft({
	output = "cucina_vegana:blueberry_pot",
	recipe = {	{"group:food_sugar", "default:stick", "group:food_sugar"},
				{"cucina_vegana:blueberry_puree", "cucina_vegana:blueberry_puree", "cucina_vegana:blueberry_puree"},
                {"", "bucket:bucket_water", ""}
			},
    replacements = {
                    {"default:stick", "default:stick"}
                   }
})

minetest.register_craft({
	output = "cucina_vegana:blueberry_pot",
	recipe = {	{"group:food_sugar", "default:stick", "group:food_sugar"},
				{"cucina_vegana:blueberry_puree", "cucina_vegana:blueberry_puree", "cucina_vegana:blueberry_puree"},
                {"", "bucket:bucket_river_water", ""}
			},
    replacements = {
                    {"default:stick", "default:stick"}
                   }
})

minetest.register_craft({
	output = "cucina_vegana:blueberry_pot",
	recipe = {	{"cucina_vegana:molasses", "default:stick", "cucina_vegana:molasses"},
				{"cucina_vegana:blueberry_puree", "cucina_vegana:blueberry_puree", "cucina_vegana:blueberry_puree"},
                {"", "bucket:bucket_water", ""}
			},
    replacements = {
                        {"default:stick", "default:stick"},
                        {"cucina_vegana:molasses", "vessels:drinking_glass 2"}
                   }
})

minetest.register_craft({
	output = "cucina_vegana:blueberry_pot",
	recipe = {	{"cucina_vegana:molasses", "default:stick", "cucina_vegana:molasses"},
				{"cucina_vegana:blueberry_puree", "cucina_vegana:blueberry_puree", "cucina_vegana:blueberry_puree"},
                {"", "bucket:bucket_river_water", ""}
			},
    replacements = {
                        {"default:stick", "default:stick"},
                        {"cucina_vegana:molasses", "vessels:drinking_glass 2"}
                   }
})

minetest.register_craft({
	output = "cucina_vegana:bowl 5",
	recipe = {	{"default:glass", "", "default:glass"},
				{"default:glass", "default:glass", "default:glass"},
             }
})

minetest.register_craft({
	output = "cucina_vegana:ciabatta_dough",
	recipe = {	{"cucina_vegana:soy_milk", "cucina_vegana:sunflower_seeds_oil", ""},
				{"group:food_flour", "cucina_vegana:rosemary", ""}
			},
    replacements = {
                        {"cucina_vegana:soy_milk", "vessels:drinking_glass"},
                        {"cucina_vegana:sunflower_seeds_oil", "vessels:glass_bottle"},
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
	output = "cucina_vegana:flax_seed_oil",
	recipe = {	{"group:seed_flax", "group:seed_flax", "group:seed_flax"},
				{"group:seed_flax", "group:seed_flax", "group:seed_flax"},
				{"", "vessels:glass_bottle", ""}
			}
})

minetest.register_craft({
	output = "cucina_vegana:lettuce_oil",
	recipe = {	{"group:seed_lettuce", "group:seed_lettuce", "group:seed_lettuce"},
				{"group:seed_lettuce", "group:seed_lettuce", "group:seed_lettuce"},
				{"", "vessels:glass_bottle", ""}
			}
})

minetest.register_craft({
        output = "cucina_vegana:mushroomlight_glass 4",
        recipe = {
                  {"","default:glass",""},
                  {"default:glass","default:torch","default:glass"},
                  {"","default:glass",""},
                }
})

minetest.register_craft({
	output = "cucina_vegana:peanut_oil",
	recipe = {	{"group:seed_peanut", "group:seed_peanut", "group:seed_peanut"},
				{"group:seed_peanut", "group:seed_peanut", "group:seed_peanut"},
				{"", "vessels:glass_bottle", ""}
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
                {"", "group:pizza_dough", ""}
			},
    replacements = {
                        {"cucina_vegana:sauce_hollandaise", "vessels:glass_bottle"},
                    }

})

minetest.register_craft({
	output = "cucina_vegana:pizza_funghi_raw",
	recipe = {	{"", "group:food_oil", "cucina_vegana:rosemary"},
				{"flowers:mushroom_brown", "cucina_vegana:imitation_meat", "flowers:mushroom_brown"},
                {"", "group:pizza_dough", ""}
			},
    replacements = {
                        {"group:food_oil", "vessels:glass_bottle"},
                    }

})

minetest.register_craft({
	output = "cucina_vegana:plate 5",
	recipe = {	{"group:wood", "", "group:wood"},
				{"group:wood", "default:cobble", "group:wood"}
			}
})

minetest.register_craft({
	output = "cucina_vegana:plate 2",
	recipe = {	{"default:clay_lump", "", "default:clay_lump"},
				{"default:clay_lump", "default:cobble", "default:clay_lump"}
			}
})

minetest.register_craft({
	output = "cucina_vegana:plate 10",
	recipe = {	{"default:steel_ingot", "", "default:steel_ingot"},
				{"default:steel_ingot", "default:cobble", "default:steel_ingot"}
			}
})

minetest.register_craft({
	output = "cucina_vegana:plate 10",
	recipe = {	{"default:copper_ingot", "", "default:copper_ingot"},
				{"default:copper_ingot", "default:cobble", "default:copper_ingot"}
			}
})

minetest.register_craft({
	output = "cucina_vegana:plate 10",
	recipe = {	{"default:tin_ingot", "", "default:tin_ingot"},
				{"default:tin_ingot", "default:cobble", "default:tin_ingot"}
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

minetest.register_craft({
	output = "cucina_vegana:rice_starch 2",
	recipe = {	{"wool:white", "cucina_vegana:rice", "wool:white"},
				{"wool:white", "cucina_vegana:rice", "wool:white"},
                {"", "bucket:bucket_water", ""}
			},
    replacements = {
                {"wool:white", "farming:cotton 2"},
                {"bucket:bucket_water", "bucket:bucket_empty"}
            }

})

minetest.register_craft({
	output = "cucina_vegana:rice_starch 2",
	recipe = {	{"wool:white", "cucina_vegana:rice", "wool:white"},
				{"wool:white", "cucina_vegana:rice", "wool:white"},
                {"", "bucket:bucket_river_water", ""}
			},
    replacements = {
                {"wool:white", "farming:cotton 2"},
                {"bucket:bucket_river_water", "bucket:bucket_empty"}
            }

})

minetest.register_craft({
	output = "wool:white",
	recipe = {	{"cucina_vegana:flax_roasted", "cucina_vegana:flax_roasted", "cucina_vegana:flax_roasted"},
				{"cucina_vegana:flax_roasted", "cucina_vegana:flax_roasted", "cucina_vegana:flax_roasted"},
			}
})

--   *******************************************
--   *****           Imitations            *****
--   *******************************************

minetest.register_craft({
	output = "cucina_vegana:imitation_butter",
	recipe = {	{"group:dye,color_yellow", "cucina_vegana:soy_milk",  "cucina_vegana:soy_milk"}
			},
			replacements = {
                            {"cucina_vegana:soy_milk", "vessels:drinking_glass"}
						}
})

minetest.register_craft({
	output = "cucina_vegana:imitation_cheese",
	recipe = {	{"group:dye,color_orange","cucina_vegana:imitation_butter", "cucina_vegana:imitation_butter", ""}
			},
})

minetest.register_craft({
	output = "cucina_vegana:imitation_fish",
	recipe = {
				{"group:dye,color_blue","cucina_vegana:tofu", "group:dye,color_blue"},
				{"cucina_vegana:tofu","cucina_vegana:tofu", "cucina_vegana:tofu"},
				{"","cucina_vegana:tofu", ""},

			},
})

minetest.register_craft({
	output = "cucina_vegana:imitation_meat",
	recipe = {	{"group:dye,color_red", "cucina_vegana:tofu", "group:dye,color_white"},
				{"", "cucina_vegana:tofu", ""},
				{"", "cucina_vegana:tofu", ""}
			},
})

minetest.register_craft({
	output = "cucina_vegana:imitation_poultry",
	recipe = {	{"cucina_vegana:tofu", "", "group:dye,color_yellow"},
				{"", "cucina_vegana:tofu", ""},
				{"cucina_vegana:tofu", "cucina_vegana:tofu", "cucina_vegana:tofu"}
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
--   *****       Side Dishes               *****
--   *******************************************

minetest.register_craft({
	output = "cucina_vegana:blueberry_jam",
	recipe = {	{"cucina_vegana:blueberry_pot_cooked", "", ""},
                {"group:wool", "", ""},
				{"vessels:glass_bottle", "", ""}
			},
    replacements = {
            {"cucina_vegana:blueberry_pot_cooked", "bucket:bucket_empty"},
            {"group:wool", "farming:cotton"}
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
	output = "cucina_vegana:dandelion_honey",
	recipe = {	{"cucina_vegana:dandelion_suds_cooking", "", ""},
                {"group:wool", "", ""},
				{"vessels:glass_bottle", "", ""}
			},
    replacements = {
            {"cucina_vegana:dandelion_suds_cooking", "bucket:bucket_empty"},
            {"group:wool", "farming:cotton 2"}
                   }
})

minetest.register_craft({
	output = "cucina_vegana:edamame",
	recipe = {	{"cucina_vegana:rosemary", "group:seed_soy", "cucina_vegana:peanut"},
                {"group:seed_soy", "group:seed_soy", "group:seed_soy"},
				{"", "group:food_plate", ""}
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
                            {"default:stick", "default:stick"}
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
                            {"default:stick", "default:stick"}
						}
})

minetest.register_craft({
	output = "cucina_vegana:peanut_butter",
	recipe = {
				{"cucina_vegana:peanut", "default:stick", "cucina_vegana:peanut"},
				{"cucina_vegana:peanut", "group:food_butter", "cucina_vegana:peanut"},
                {"", "vessels:glass_bottle", ""},
			},
			replacements = {
							{"default:stick", "default:stick"},
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
	output = "cucina_vegana:fryer_raw",
	recipe = {
				{"default:paper","", "default:paper"},
				{"cucina_vegana:parsley","cucina_vegana:molasses", "cucina_vegana:rosemary"},
				{"","cucina_vegana:imitation_poultry", ""},
			},
			replacements = {
							{"cucina_vegana:molasses", "vessels:drinking_glass"},
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
						   {"group:food_oil", "vessels:glass_bottle"},
						}
})

minetest.register_craft({
	output = "cucina_vegana:salad_bowl",
	recipe = {	{"cucina_vegana:parsley", "cucina_vegana:lettuce", "cucina_vegana:chives"},
				{"", "group:food_oil", ""},
				{"", "group:food_bowl", ""}
			},
            replacements = {
                            {"group:food_oil", "vessels:glass_bottle"}
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
	output = "cucina_vegana:salad_hollandaise",
	recipe = {	{"cucina_vegana:parsley", "cucina_vegana:lettuce", "cucina_vegana:chives"},
				{"cucina_vegana:sauce_hollandaise", "group:food_oil", ""},
				{"", "group:food_bowl", ""}
			},
    replacements = {
                {"group:food_oil", "vessels:glass_bottle"},
				{"cucina_vegana:sauce_hollandaise", "vessels:glass_bottle"}
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
	replacements = {
		{"cucina_vegana:bowl_rice", "cucina_vegana:bowl"}
	}
})

minetest.register_craft({
	output = "default:paper 4",
	recipe = {	{"default:stone", "cucina_vegana:flax_roasted", "default:stone"},
				{"default:stone", "cucina_vegana:flax_roasted", "default:stone"},
                {"", "bucket:bucket_water", ""},
			},
    replacements = {
                    {"default:stone", "default:stone 4"},
                    {"bucket:bucket_water", "bucket:bucket_empty"},
                    }
})

minetest.register_craft({
	output = "default:paper 4",
	recipe = {	{"default:desert_stone", "cucina_vegana:flax_roasted", "default:desert_stone"},
				{"default:desert_stone", "cucina_vegana:flax_roasted", "default:desert_stone"},
                {"", "bucket:bucket_water", ""},
			},
    replacements = {
                    {"default:desert_stone", "default:desert_stone 4"},
                    {"bucket:bucket_water", "bucket:bucket_empty"},
                    }
})

minetest.register_craft({
	output = "default:paper 4",
	recipe = {	{"default:cobble", "cucina_vegana:flax_roasted", "default:cobble"},
				{"default:cobble", "cucina_vegana:flax_roasted", "default:cobble"},
                {"", "bucket:bucket_water", ""},
			},
    replacements = {
                    {"default:cobble", "default:cobble 4"},
                    {"bucket:bucket_water", "bucket:bucket_empty"},
                    }
})

minetest.register_craft({
	output = "default:paper 4",
	recipe = {	{"default:desert_cobble", "cucina_vegana:flax_roasted", "default:desert_cobble"},
				{"default:desert_cobble", "cucina_vegana:flax_roasted", "default:desert_cobble"},
                {"", "bucket:bucket_water", ""},
			},
    replacements = {
                    {"default:desert_cobble", "default:desert_cobble 4"},
                    {"bucket:bucket_water", "bucket:bucket_empty"},
                    }
})

minetest.register_craft({
	output = "default:paper 4",
	recipe = {	{"default:stone", "cucina_vegana:flax_roasted", "default:stone"},
				{"default:stone", "cucina_vegana:flax_roasted", "default:stone"},
                {"", "bucket:bucket_river_water", ""},
			},
    replacements = {
                    {"default:stone", "default:stone 4"},
                    {"bucket:bucket_river_water", "bucket:bucket_empty"},
                    }
})

minetest.register_craft({
	output = "default:paper 4",
	recipe = {	{"default:desert_stone", "cucina_vegana:flax_roasted", "default:desert_stone"},
				{"default:desert_stone", "cucina_vegana:flax_roasted", "default:desert_stone"},
                {"", "bucket:bucket_river_water", ""},
			},
    replacements = {
                    {"default:desert_stone", "default:desert_stone 4"},
                    {"bucket:bucket_river_water", "bucket:bucket_empty"},
                    }
})

minetest.register_craft({
	output = "default:paper 4",
	recipe = {	{"default:cobble", "cucina_vegana:flax_roasted", "default:cobble"},
				{"default:cobble", "cucina_vegana:flax_roasted", "default:cobble"},
                {"", "bucket:bucket_river_water", ""},
			},
    replacements = {
                    {"default:cobble", "default:cobble 4"},
                    {"bucket:bucket_river_water", "bucket:bucket_empty"},
                    }
})

minetest.register_craft({
	output = "default:paper 4",
	recipe = {	{"default:desert_cobble", "cucina_vegana:flax_roasted", "default:desert_cobble"},
				{"default:desert_cobble", "cucina_vegana:flax_roasted", "default:desert_cobble"},
                {"", "bucket:bucket_river_water", ""},
			},
    replacements = {
                    {"default:desert_cobble", "default:desert_cobble 4"},
                    {"bucket:bucket_river_water", "bucket:bucket_empty"},
                    }
})

minetest.register_craft({
	output = "farming:cotton 2",
	recipe = {
              {"cucina_vegana:flax_roasted","default:stick","cucina_vegana:flax_roasted"},
            },
    replacements = {
                    {"default:stick", "default:stick"},
                },
})
