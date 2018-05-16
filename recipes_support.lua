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

if minetest.get_modpath("bbq") then

	--Lamb Kebab Craft Recipe
	minetest.register_craft( {
		output = "bbq:lamb_kebab_raw 4",
		type = "shapeless",
		recipe = {"group:food_pepper", "group:food_meat", "default:stick", "flowers:mushroom_brown", "group:food_onion"}
	})

	--Rack of Lamb Craft Recipe
	minetest.register_craft( {
		output = "bbq:rack_lamb_raw 2",
		type = "shapeless",
		recipe = {"bbq:bbq_sauce", "group:food_meat", "mobs:mutton_raw"}
	})

	--Leg of Lamb Craft Recipe
	minetest.register_craft( {
		output = "bbq:leg_lamb_raw 2",
		type = "shapeless",
		recipe = {"group:food_garlic_clove", "group:food_meat", "mobs:mutton_raw"}
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

	--Hamburger Craft Recipe
	minetest.register_craft( {
		output = "bbq:hamburger 2",
		type = "shapeless",
		recipe = {"group:food_bread", "bbq:hamburger_patty"}
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

end

