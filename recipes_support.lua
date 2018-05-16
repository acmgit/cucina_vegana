--   *******************************************
--   **             Recipe differences                 ** 
--   *******************************************

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

end

--   *******************************************
--   ** Additional Recipes with other Mods  ** 
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

end -- if mobs

if minetest.get_modpath("animalmaterials") then

	minetest.register_craft({
		output = "animalmaterials:milk",
		recipe = {
			{"cucina_vegana:milk", "cucina_vegana:milk", "cucina_vegana:milk"},
			{"", "vessels:glass_bottle", ""}
		},
		replacements = {{"cucina_vegana:milk", "vessels:drinking_glass"}}
	})
	
end -- if animalmaterials

if minetest.get_modpath("fishing") then

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
	
end

