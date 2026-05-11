--   *******************************************
--   **             Recipe differences        **
--   *******************************************

local modname = core.get_current_modname()

--   *******************************************
--   ** Additional Recipes with other Mods  **
--   *******************************************

-- Support for mobs
if core.get_modpath("mobs") then
	core.register_craft({
		output = "mobs:meat_raw",
		recipe = {
			{"cucina_vegana:tofu", "cucina_vegana:tofu", "cucina_vegana:tofu"}
		}
	})

	core.register_craft({
		output = "mobs:chicken_raw",
		recipe = {
			{"", "", "cucina_vegana:tofu"},
			{"", "cucina_vegana:tofu", ""},
			{"cucina_vegana:tofu", "", ""},
		}
	})

    core.log("info", "[MOD] " .. modname .. ": mobs supported.")
end

-- Support for animalmaterials
if core.get_modpath("animalmaterials") then
	core.register_craft({
		output = "animalmaterials:milk",
		recipe = {
			{"cucina_vegana:milk", "cucina_vegana:milk", "cucina_vegana:milk"},
			{"", "vessels:glass_bottle", ""}
		},
		replacements = {{"cucina_vegana:milk", "vessels:drinking_glass"}}
	})

    core.log("info", "[MOD] " .. modname .. ": animalmaterials supported.")

end

-- Support for fishing
if core.get_modpath("fishing") then
    cucina_vegana.add_group("fishing:fish_raw", {food_fish = 1})
    cucina_vegana.add_group("fishing:clownfish_raw", {food_fish = 1})
    cucina_vegana.add_group("fishing:bluewhite_raw", {food_fish = 1})
    cucina_vegana.add_group("fishing:exoticfish_raw", {food_fish = 1})
    cucina_vegana.add_group("fishing:carp_raw", {food_fish = 1})
    cucina_vegana.add_group("fishing:perch_raw", {food_fish = 1})
    cucina_vegana.add_group("fishing:catfish_raw", {food_fish = 1})

	core.register_craft({
		type = "shapeless",
		output = "fishing:sushi",
		recipe = {"group:food_fish","group:food_rice","flowers:seaweed"},
		replacements = {{"group:food_rice", "cucina_vegana:bowl"}}
	})

	core.register_craft({
		type = "shapeless",
		output = "fishing:sushi",
		recipe = {"group:food_fish","group:food_rice","seaplants:kelpgreen"},
		replacements = {{"group:food_rice", "cucina_vegana:bowl"}}

	})

	core.register_craft({
		type = "shapeless",
		output = "fishing:sushi",
		recipe = {"group:food_fish","group:food_rice","seaplants:kelpgreen"},
		replacements = {{"group:food_rice", "cucina_vegana:bowl"}}

	})

    core.register_craft({
		type = "shapeless",
		output = "fishing:sushi",
		recipe = {"group:food_fish","group:food_rice","default:jungleleaves"},
		replacements = {{"group:food_rice", "cucina_vegana:bowl"}}

	})

    core.log("info", "[MOD] " .. modname .. ": fishing supported.")
end

-- Support for bbq
if core.get_modpath("bbq") then
	-- *** group:food_meat

	--BBQ Beef Ribs Craft Recipe
	core.register_craft({
		output = "bbq:bbq_beef_ribs_raw 2",
		type = "shapeless",
		recipe = {"bbq:bbq_sauce", "group:food_meat", "group:food_pepper_ground"}
	})

	--Corned Beef Craft Recipe
	core.register_craft({
		output = "bbq:corned_beef_raw",
		type = "shapeless",
		recipe = {"group:food_peppercorn", "group:food_meat","bbq:brine",}
	})

	--BBQ Brisket Craft Recipe
	core.register_craft({
		output = "bbq:brisket_raw 2",
		type = "shapeless",
		recipe = {"bbq:bbq_sauce", "bbq:molasses", "group:food_meat", "group:food_garlic_clove"}
	})

	--London Broil Craft Recipe
	core.register_craft({
		output = "bbq:london_broil_raw 2",
		type = "shapeless",
		recipe = {"bbq:bacon", "group:food_garlic_clove", "group:food_meat"}
	})

	--Beef Jerky Craft Recipe
	core.register_craft({
		output = "bbq:beef_jerky_raw 3",
		type = "shapeless",
		recipe = {"bbq:liquid_smoke", "bbq:brine", "group:food_meat"}
	})

	--Pepper Steak Craft Recipe
	core.register_craft({
		output = "bbq:pepper_steak_raw",
		type = "shapeless",
		recipe = {"group:food_pepper_ground", "group:food_meat", "group:food_pepper_ground"}
	})

	-- *** group:food_bread

	--Cheese Steak Craft Recipe
	core.register_craft({
		output = "bbq:cheese_steak 2",
		type = "shapeless",
		recipe = {"group:food_bread", "group:food_pepper", "bbq:beef", "group:food_cheese", "group:food_onion"}
	})

	--Bacon Cheeseburger Craft Recipe
	core.register_craft({
		output = "bbq:bacon_cheeseburger 3",
		type = "shapeless",
		recipe = {"group:food_bread", "bbq:bacon", "bbq:hamburger_patty", "group:food_cheese"}
	})

	--Bacon Cheeseburger Craft Recipe
	core.register_craft({
		output = "bbq:bacon_cheeseburger 3",
		type = "shapeless",
		recipe = {"group:food_bread", "bbq:bacon", "group:food_meat", "group:food_cheese"}
	})

	--Hamburger Craft Recipe
	core.register_craft({
        output = "bbq:hamburger 2",
		type = "shapeless",
		recipe = {"group:food_bread", "bbq:hamburger_patty"}
	})

	--Hamburger Craft Recipe
	core.register_craft({
		output = "bbq:hamburger 2",
		type = "shapeless",
		recipe = {"group:food_bread", "group:food_meat"}
	})

	--Hotdog Craft Recipe
	core.register_craft({
		output = "bbq:hotdog 2",
		type = "shapeless",
		recipe = {"bbq:hotdog_cooked", "group:food_bread"}
	})

	--Pulled Pork Craft Recipe
	core.register_craft({
		output = "bbq:pulled_pork 2",
		type = "shapeless",
		recipe = {"mobs:pork_cooked", "group:food_bread", "bbq:bbq_sauce"}
	})


	--Stuffed Chop Craft Recipe
	core.register_craft({
		output = "bbq:stuffed_chop_raw 3",
		type = "shapeless",
		recipe = {"group:food_onion", "group:food_bread", "flowers:mushroom_brown", "mobs:pork_raw", "default:apple"}
	})

	--Stuffed Mushroom Craft Recipe
	core.register_craft({
		output = "bbq:stuffed_mushroom_raw 2",
		type = "shapeless",
		recipe = {"group:food_tomato", "group:food_bread", "flowers:mushroom_brown"}
	})

	--Stuffed Pepper Craft Recipe
	core.register_craft({
		output = "bbq:stuffed_pepper_raw 3",
		type = "shapeless",
		recipe = {"group:food_cheese", "group:food_bread", "group:food_pepper"}
	})

    -- bbq:bacon_raw
	core.register_craft({
		output = "bbq:bacon_raw 3",
		recipe = {
			{"bbq:basting_brush", "group:dye,color_red", "group:dye,color_white"},
			{"cucina_vegana:tofu", "cucina_vegana:tofu", "cucina_vegana:tofu"},
		},
        replacements = {{"bbq:basting_brush", "bbq:basting_brush"}}
    })

	core.register_craft({
		output = "bbq:bbq_chicken_raw",
		recipe = {
			{"bbq:basting_brush", "bbq:hot_sauce", "cucina_vegana:tofu"},
			{"", "cucina_vegana:tofu", ""},
			{"cucina_vegana:tofu", "", ""},
		},
        replacements = {{"bbq:basting_brush", "bbq:basting_brush"}}
    })

	core.register_craft({
		output = "bbq:beef_raw",
		recipe = {
			{"bbq:basting_brush", "group:dye,color_red", "bbq:sea_salt"},
			{"cucina_vegana:imitation_meat", "cucina_vegana:imitation_meat", ""},
        },
        replacements = {{"bbq:basting_brush", "bbq:basting_brush"}}
    })

	core.register_craft({
		output = "bbq:ham_raw",
		recipe = {
			{"cucina_vegana:tofu", "bbq:liquid_smoke", "cucina_vegana:tofu"},
		}
    })

	core.register_craft({
		output = "bbq:hot_wings_raw 2",
		recipe = {
			{"cucina_vegana:tofu", "", "cucina_vegana:tofu"},
			{"cucina_vegana:tofu", "bbq:hot_sauce", "cucina_vegana:tofu"},
			{"cucina_vegana:tofu", "", "cucina_vegana:tofu"},
        }
    })

	core.register_craft({
		output = "bbq:hotdog_raw 3",
		recipe = {
			{"bbq:basting_brush", "group:food_salt", ""},
			{"cucina_vegana:asparagus", "cucina_vegana:tofu", "group:food_salt"},
			{"bbq:paprika", "", ""},
        },
        replacements = {{"bbq:basting_brush", "bbq:basting_brush"}}
    })

    core.register_craft({
        output = "bbq:leg_lamb_raw",
        recipe = {
			{"bbq:basting_brush", "cucina_vegana:imitation_butter", "cucina_vegana:soy_milk"},
			{"cucina_vegana:imitation_meat", "", ""},
			{"group:food_salt", "", ""},
        },
        replacements = {{"bbq:basting_brush", "bbq:basting_brush"}}
    })

    core.register_craft({
        output = "bbq:rack_lamb_raw",
        recipe = {
			{"bbq:basting_brush", "", "default:stick"},
			{"cucina_vegana:imitation_meat", "", "default:stick"},
			{"bbq:spatula", "", "default:stick"},
        },
        replacements = {
            {"bbq:basting_brush", "bbq:basting_brush"},
            {"bbq:spatula", "bbq:spatula"},
        }
    })

    core.register_craft({
        output = "bbq:lamb_kebab_raw",
        recipe = {
			{"bbq:leg_lamb_raw", "default:stick", ""},
			{"bbq:leg_lamb_raw", "default:stick", ""},
        },
    })

    core.log("info", "[MOD] " .. modname .. ": bbq supported.")
end

-- Support for pizza
if core.get_modpath("pizza") then
    core.register_craft({
        type = "shapeless",
        output = "pizza:pizza_dough",
        recipe = {"group:food_flour", "group:food_cheese", "group:food_tomato"},
    })

    cucina_vegana.add_group("pizza:pizza_dough", {pizza_dough = 1})

    core.register_craft({
        type = "shapeless",
        output = "pizza:pizza_dough",
        recipe = {"cucina_vegana:pizza_dough"}
    })

    core.register_craft({
        type = "shapeless",
        output = "cucina_vegana:pizza_dough",
        recipe = {"pizza:pizza_dough"}
    })
end

-- Support for homedecor
if core.get_modpath("homedecor") then
    core.register_craft({
        output = "homedecor:cobweb_corner 5",
        recipe = {
			{ "cucina_vegana:flax_roasted", "", "cucina_vegana:flax_roasted" },
			{ "", "cucina_vegana:flax_roasted", "" },
			{ "cucina_vegana:flax_roasted", "", "cucina_vegana:flax_roasted" }
        },
    })

    core.register_craft({
        output = "homedecor:oil_lamp",
        recipe = {
            { "", "vessels:glass_bottle", "" },
            { "", "cucina_vegana:flax_roasted", "" },
            { "default:steel_ingot", "group:food_oil", "default:steel_ingot" }
        }
    })

    core.register_craft({
        output = "homedecor:oil_lamp_tabletop",
        recipe = {
            { "", "vessels:glass_bottle", "" },
            { "", "cucina_vegana:flax_roasted", "" },
            { "default:iron_lump", "group:food_oil", "default:iron_lump" }
        }
    })

    core.register_craft({
        output = "homedecor:candle_thin 4",
        recipe = {
            {"cucina_vegana:flax_roasted" },
            {"basic_materials:paraffin" }
        }
    })

    core.register_craft({
        output = "homedecor:candle 2",
        recipe = {
            {"cucina_vegana:flax_roasted" },
            {"basic_materials:paraffin" },
            {"basic_materials:paraffin" }
        }
    })

    core.register_craft({
        output = "homedecor:blinds_thin",
        recipe = {
            { "group:stick", "basic_materials:plastic_sheet", "group:stick" },
            { "cucina_vegana:flax_roasted", "basic_materials:plastic_strip", "" },
            { "", "basic_materials:plastic_strip", "" },
        },
    })

    core.register_craft({
        output = "homedecor:blinds_thick",
        recipe = {
            { "group:stick", "basic_materials:plastic_sheet", "group:stick" },
            { "cucina_vegana:flax_roasted", "basic_materials:plastic_strip", "basic_materials:plastic_strip" },
            { "", "basic_materials:plastic_strip", "basic_materials:plastic_strip" },
        },
    })
end

-- Support for building_blocks
if core.get_modpath("building_blocks") then
    core.register_craft({
        output = 'building_blocks:terrycloth_towel 2',
        recipe = {
            {"cucina_vegana:flax_roasted", "cucina_vegana:flax_roasted", "cucina_vegana:flax_roasted"},
        }
    })
end

--[[
        **************************************************
        ***             Support for ropes              ***
        **************************************************
]]--

if core.get_modpath("ropes") then
	core.register_craft({
		output = 'ropes:ropesegment',
		recipe = {
			{'cucina_vegana:flax_roasted','cucina_vegana:flax_roasted'},
			{'cucina_vegana:flax_roasted','cucina_vegana:flax_roasted'},
			{'cucina_vegana:flax_roasted','cucina_vegana:flax_roasted'},
		}
	})

	core.register_craft({
		output = 'ropes:rope',
		recipe = {
			{'cucina_vegana:flax_roasted'},
			{'cucina_vegana:flax_roasted'},
		}
	})
end

-- Support for cottages
if core.get_modpath("cottages") then
    core.register_craft({
        output = "cottages:rope",
        recipe = {
            {"cucina_vegana:flax_roasted","",""},
            {"","cucina_vegana:flax_roasted",""},
            {"","","cucina_vegana:flax_roasted"},
            }
    })
end

-- Support for moreblocks
if core.get_modpath("moreblocks") then
    core.register_craft({
        output = "moreblocks:rope 3",
        recipe = {
            {"cucina_vegana:flax_roasted"},
            {"cucina_vegana:flax_roasted"},
            {"cucina_vegana:flax_roasted"},
        }
    })
end

-- Support for petz
if core.get_modpath("petz") then
    core.register_craft({
	    output = "petz:lasso",
	    recipe = {
		    {"cucina_vegana:flax_roasted", "", "cucina_vegana:flax_roasted"},
		    {"", "default:diamond", ""},
		    {"cucina_vegana:flax_roasted", "", "cucina_vegana:flax_roasted"},
        }
    })

    core.register_craft({
        type = "shaped",
        output = 'petz:pet_bowl',
        recipe = {
            {'group:wood', '', 'group:wood'},
            {'', 'cucina_vegana:plate', ''},
        }
    })

    core.register_craft({
        type = "shapeless",
        output = "petz:blueberry_cheese_cake",
        recipe = {"group:food_blueberries", "farming:wheat", "group:food_cheese", "group:food_egg"},
    })

    core.register_craft({
        type = "shapeless",
        output = "petz:blueberry_cheese_cake",
        recipe = {"group:food_blueberry", "farming:wheat", "group:food_cheese", "group:food_egg"},
    })

    core.register_craft({
        type = "shapeless",
        output = "petz:blueberry_ice_cream 3",
        recipe = {"group:food_blueberries", "group:food_milk", "group:food_egg",
                  "default:snow", "group:food_egg", "default:snow", "farming:wheat"},
        replacements = {{"group:food_milk", "bucket:bucket_empty"}},
    })

    core.register_craft({
        type = "shapeless",
        output = "petz:blueberry_ice_cream 3",
        recipe = {"group:food_blueberry", "group:food_milk", "group:food_egg",
                  "default:snow", "group:food_egg", "default:snow", "farming:wheat"},
        replacements = {{"group:food_milk", "bucket:bucket_empty"}},
    })

    core.register_craft({
        type = "shapeless",
        output = "petz:blueberry_muffin 8",
        recipe = {"group:food_blueberries", "farming:wheat", "farming:wheat", "petz:chicken_egg",
                  "petz:chicken_egg", "default:paper", "group:food_milk"},
        replacements = {{"group:food_milk", "bucket:bucket_empty"}},
    })

    core.register_craft({
        type = "shapeless",
        output = "petz:blueberry_muffin 8",
        recipe = {"group:food_blueberry", "farming:wheat", "farming:wheat",
                  "petz:chicken_egg", "petz:chicken_egg", "default:paper", "group:food_milk"},
        replacements = {{"group:food_milk", "bucket:bucket_empty"}},
    })

    -- Dreamcatcher
    core.register_craft({
        type = "shaped",
        output = "petz:dreamcatcher",
        recipe = {
            {"", "group:wood", ""},
            {"cucina_vegana:flax_roasted", "cucina_vegana:flax_roasted", "cucina_vegana:flax_roasted"},
            {"petz:ducky_feather", "petz:ducky_feather", "petz:ducky_feather"},
        }
    })

    core.register_craft({
        type = "shaped",
        output = "petz:ducky_feather",
        recipe = {
            {"cucina_vegana:flax_roasted", "default:stick", "cucina_vegana:flax_roasted"},
            {"cucina_vegana:flax_roasted", "default:stick", "cucina_vegana:flax_roasted"},
            {"", "default:stick", ""},
        }
    })

    cucina_vegana.add_group("petz:cheese", {food_cheese = 1, eatable = 1})
    cucina_vegana.add_group("petz:milk", {food_milk = 1, eatable = 1})
    cucina_vegana.add_group("petz:honey_bottle", {food_sugar = 1, food_honey = 1})
end

-- Support for aqua_farming
if core.get_modpath("aqua_farming") then
    core.register_craft({
        output = "cucina_vegana:vegan_sushi",
        recipe = {	{"cucina_vegana:imitation_fish", "cucina_vegana:bowl_rice", ""},
                    {"aqua_farming:alga_item", "", ""}
                },
        replacements = {
            {"cucina_vegana:bowl_rice", "cucina_vegana:bowl"}
        }
    })

    core.register_craft({
        output = "cucina_vegana:imitation_fish",
        recipe = {
            {"aqua_farming:sea_grass_item","cucina_vegana:tofu", "group:dye,color_blue"},
            {"cucina_vegana:tofu","aqua_farming:sea_grass_item", "cucina_vegana:tofu"},
            {"","cucina_vegana:tofu", ""},
        },
    })

    core.register_craft({
        output = "cucina_vegana:sea_salad",
        recipe = {
            {"aqua_farming:sea_cucumber_item","cucina_vegana:parsley", "cucina_vegana:lettuce"},
            {"cucina_vegana:chives","aqua_farming:sea_anemone_item", "cucina_vegana:asparagus"},
            {"","cucina_vegana:bowl", ""},
        },
    })
end

cucina_vegana.add_group("default:blueberries", {food_blueberry = 1, food_blueberries = 1})
cucina_vegana.add_group("bushes:blueberry", {food_blueberries = 1})
