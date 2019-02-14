--   *******************************************
--   **             Recipe differences                 ** 
--   *******************************************

local modname = minetest.get_current_modname()

if(cucina_vegana_farming_default) then

	minetest.register_craft({
		output = "cucina_vegana:lettuce_oil",
		recipe = {	{"cucina_vegana:seed_lettuce", "cucina_vegana:seed_lettuce", "cucina_vegana:seed_lettuce"},
					{"cucina_vegana:seed_lettuce", "cucina_vegana:seed_lettuce", "cucina_vegana:seed_lettuce"},
					{"", "vessels:glass_bottle", ""}
				}
	})

else

	minetest.register_craft({
		output = "cucina_vegana:lettuce_oil",
		recipe = {	{"cucina_vegana:lettuce_seed", "cucina_vegana:lettuce_seed", "cucina_vegana:lettuce_seed"},
					{"cucina_vegana:lettuce_seed", "cucina_vegana:lettuce_seed", "cucina_vegana:lettuce_seed"},
					{"", "vessels:glass_bottle", ""}
				}
	})

end -- if(cucina_vegana_farming_default

--   *******************************************
--   ** Additional Recipes with other Mods  ** 
--   *******************************************

--   *******************************************
--   **                 mobs                  ** 
--   *******************************************

if minetest.get_modpath("mobs") then
    
	minetest.register_craft({
		output = "mobs:meat_raw",
		recipe = {
			{"cucina_vegana:tofu", "cucina_vegana:tofu", "cucina_vegana:tofu"}
		}
	})

	minetest.register_craft({
		output = "mobs:chicken_raw",
		recipe = {
			{"", "", "cucina_vegana:tofu"},
			{"", "cucina_vegana:tofu", ""},
			{"cucina_vegana:tofu", "", ""},
		}
	})
                
    minetest.log("info", "[MOD] " .. modname .. ": mobs supported.")
                 
end -- if minetest.get_modpath("mobs"
    
--   *******************************************
--   **           animalmaterials             ** 
--   *******************************************

if minetest.get_modpath("animalmaterials") then

	minetest.register_craft({
		output = "animalmaterials:milk",
		recipe = {
			{"cucina_vegana:milk", "cucina_vegana:milk", "cucina_vegana:milk"},
			{"", "vessels:glass_bottle", ""}
		},
		replacements = {{"cucina_vegana:milk", "vessels:drinking_glass"}}
	})

    minetest.log("info", "[MOD] " .. modname .. ": animalmaterials supported.")

end -- if minetest.get_modpath("animalmaterials"

--   *******************************************
--   **               fishing                 ** 
--   *******************************************

if minetest.get_modpath("fishing") then

    minetest.override_item("fishing:fish_raw", {
                                    groups = {food_fish = 1}
                        })
    
    minetest.override_item("fishing:clownfish_raw", {
                                    groups = {food_fish = 1}
                        })
    
    minetest.override_item("fishing:bluewhite_raw", {
                                    groups = {food_fish = 1}
                        })

    minetest.override_item("fishing:exoticfish_raw", {
                                    groups = {food_fish = 1}
                        })

    minetest.override_item("fishing:carp_raw", {
                                    groups = {food_fish = 1}
                        })

    minetest.override_item("fishing:perch_raw", {
                                    groups = {food_fish = 1}
                        })

    minetest.override_item("fishing:catfish_raw", {
                                    groups = {food_fish = 1}
                        })

    minetest.register_craft({
	type = "cooking",
	output = "fishing:fish",
	recipe = "group:food_fish",
	cooktime = 2,
    })

	minetest.register_craft({
		type = "shapeless",
		output = "fishing:sushi",
		recipe = {"fishing:fish_raw","group:food_rice","flowers:seaweed"},
		
		replacements = {{"group:food_rice", "cucina_vegana:bowl"}}
	})

	minetest.register_craft({
		type = "shapeless",
		output = "fishing:sushi",
		recipe = {"fishing:fish_raw","group:food_rice","seaplants:kelpgreen"},
		replacements = {{"group:food_rice", "cucina_vegana:bowl"}}
		
	})

	minetest.register_craft({
		type = "shapeless",
		output = "fishing:sushi",
		recipe = {"group:food_fish","group:food_rice","flowers:seaweed"},
		
		replacements = {{"group:food_rice", "cucina_vegana:bowl"}}
	})

	minetest.register_craft({
		type = "shapeless",
		output = "fishing:sushi",
		recipe = {"group:food_fish","group:food_rice","seaplants:kelpgreen"},
		replacements = {{"group:food_rice", "cucina_vegana:bowl"}}
		
	})

    minetest.register_craft({
		type = "shapeless",
		output = "fishing:sushi",
		recipe = {"group:food_fish","group:food_rice","default:jungleleaves"},
		replacements = {{"group:food_rice", "cucina_vegana:bowl"}}
		
	})

    minetest.log("info", "[MOD] " .. modname .. ": fishing supported.")

end -- if minetest.get_modpath("fishing"

--   *******************************************
--   **                 bbq                   ** 
--   *******************************************

if minetest.get_modpath("bbq") then

	-- *** group:food_meat
	
	--BBQ Beef Ribs Craft Recipe
	minetest.register_craft( {
		output = "bbq:bbq_beef_ribs_raw 2",
		type = "shapeless",
		recipe = {"bbq:bbq_sauce", "group:food_meat", "group:food_pepper_ground"}
	})

	--Corned Beef Craft Recipe
	minetest.register_craft( {
		output = "bbq:corned_beef_raw",
		type = "shapeless",
		recipe = {"group:food_peppercorn", "group:food_meat","bbq:brine",}
	})

	--BBQ Brisket Craft Recipe
	minetest.register_craft( {
		output = "bbq:brisket_raw 2",
		type = "shapeless",
		recipe = {"bbq:bbq_sauce", "bbq:molasses", "group:food_meat", "group:food_garlic_clove"}
	})

	--London Broil Craft Recipe
	minetest.register_craft( {
		output = "bbq:london_broil_raw 2",
		type = "shapeless",
		recipe = {"bbq:bacon", "group:food_garlic_clove", "group:food_meat"}
	})
	
	--Beef Jerky Craft Recipe
	minetest.register_craft( {
		output = "bbq:beef_jerky_raw 3",
		type = "shapeless",
		recipe = {"bbq:liquid_smoke", "bbq:brine", "group:food_meat"}
	})

	--Pepper Steak Craft Recipe
	minetest.register_craft( {
		output = "bbq:pepper_steak_raw",
		type = "shapeless",
		recipe = {"group:food_pepper_ground", "group:food_meat", "group:food_pepper_ground"}
	})

	-- *** group:food_bread
	
	--Cheese Steak Craft Recipe
	minetest.register_craft( {
		output = "bbq:cheese_steak 2",
		type = "shapeless",
		recipe = {"group:food_bread", "group:food_pepper", "bbq:beef", "group:food_cheese", "group:food_onion"}
	})
	
	--Bacon Cheeseburger Craft Recipe
	minetest.register_craft( {
		output = "bbq:bacon_cheeseburger 3",
		type = "shapeless",
		recipe = {"group:food_bread", "bbq:bacon", "bbq:hamburger_patty", "group:food_cheese"}
	})

	--Bacon Cheeseburger Craft Recipe
	minetest.register_craft( {
		output = "bbq:bacon_cheeseburger 3",
		type = "shapeless",
		recipe = {"group:food_bread", "bbq:bacon", "group:food_meat", "group:food_cheese"}
	})

	--Hamburger Craft Recipe
	minetest.register_craft( {
        output = "bbq:hamburger 2",
		type = "shapeless",
		recipe = {"group:food_bread", "bbq:hamburger_patty"}
	})

	--Hamburger Craft Recipe
	minetest.register_craft( {
		output = "bbq:hamburger 2",
		type = "shapeless",
		recipe = {"group:food_bread", "group:food_meat"}
	})
	
	--Hotdog Craft Recipe
	minetest.register_craft( {
		output = "bbq:hotdog 2",
		type = "shapeless",
		recipe = {"bbq:hotdog_cooked", "group:food_bread"}
	})

	--Pulled Pork Craft Recipe
	minetest.register_craft( {
		output = "bbq:pulled_pork 2",
		type = "shapeless",
		recipe = {"mobs:pork_cooked", "group:food_bread", "bbq:bbq_sauce"}
	})


	--Stuffed Chop Craft Recipe
	minetest.register_craft( {
		output = "bbq:stuffed_chop_raw 3",
		type = "shapeless",
		recipe = {"group:food_onion", "group:food_bread", "flowers:mushroom_brown", "mobs:pork_raw", "default:apple"}
	})

	--Stuffed Mushroom Craft Recipe
	minetest.register_craft( {
		output = "bbq:stuffed_mushroom_raw 2",
		type = "shapeless",
		recipe = {"group:food_tomato", "group:food_bread", "flowers:mushroom_brown"}
	})

	--Stuffed Pepper Craft Recipe
	minetest.register_craft( {
		output = "bbq:stuffed_pepper_raw 3",
		type = "shapeless",
		recipe = {"group:food_cheese", "group:food_bread", "group:food_pepper"}
	})
    
    -- bbq:bacon_raw
	minetest.register_craft( {
		output = "bbq:bacon_raw 3",
		recipe = {
			{"bbq:basting_brush", "dye:red", "dye:white"},
			{"cucina_vegana:tofu", "cucina_vegana:tofu", "cucina_vegana:tofu"},
		},
        replacements = {{"bbq:basting_brush", "bbq:basting_brush"}}        
    })

	minetest.register_craft( {
		output = "bbq:bbq_chicken_raw",
		recipe = {
			{"bbq:basting_brush", "bbq:hot_sauce", "cucina_vegana:tofu"},
			{"", "cucina_vegana:tofu", ""},
			{"cucina_vegana:tofu", "", ""},
		},
        replacements = {{"bbq:basting_brush", "bbq:basting_brush"}}        
    })

	minetest.register_craft( {
		output = "bbq:beef_raw",
		recipe = {
			{"bbq:basting_brush", "dye:red", "bbq:sea_salt"},
			{"cucina_vegana:imitation_meat", "cucina_vegana:imitation_meat", ""},
        },
        replacements = {{"bbq:basting_brush", "bbq:basting_brush"}}
    })

	minetest.register_craft( {
		output = "bbq:ham_raw",
		recipe = {
			{"cucina_vegana:tofu", "bbq:liquid_smoke", "cucina_vegana:tofu"},
		}
    })

	minetest.register_craft( {
		output = "bbq:hot_wings_raw 2",
		recipe = {
			{"cucina_vegana:tofu", "", "cucina_vegana:tofu"},
			{"cucina_vegana:tofu", "bbq:hot_sauce", "cucina_vegana:tofu"},
			{"cucina_vegana:tofu", "", "cucina_vegana:tofu"},
        }
    })

	minetest.register_craft( {
		output = "bbq:hotdog_raw 3",
		recipe = {
			{"bbq:basting_brush", "group:food_salt", ""},
			{"cucina_vegana:asparagus", "cucina_vegana:tofu", "group:food_salt"},
			{"bbq:paprika", "", ""},
        },
        replacements = {{"bbq:basting_brush", "bbq:basting_brush"}}
    })
    
    minetest.register_craft( {
    output = "bbq:leg_lamb_raw",
    recipe = {
			{"bbq:basting_brush", "cucina_vegana:imitation_butter", "cucina_vegana:soy_milk"},
			{"cucina_vegana:imitation_meat", "", ""},
			{"group:food_salt", "", ""},
        },
        replacements = {{"bbq:basting_brush", "bbq:basting_brush"}}
    })

    minetest.register_craft( {
        output = "bbq:rack_lamb_raw",
        recipe = {
			{"bbq:basting_brush", "", "default:stick"},
			{"cucina_vegana:imitation_meat", "", "default:stick"},
			{"bbq:spatula", "", "default:stick"},
        },
        replacements = {{"bbq:basting_brush", "bbq:basting_brush"},
                        {"bbq:spatula", "bbq:spatula"},
                        }
    })

    minetest.register_craft( {
        output = "bbq:lamb_kebab_raw",
        recipe = {
			{"bbq:leg_lamb_raw", "default:stick", ""},
			{"bbq:leg_lamb_raw", "default:stick", ""},
        },
    })

    minetest.log("info", "[MOD] " .. modname .. ": bbq supported.")

end -- if minetest.get_modpath("bbq"
    
