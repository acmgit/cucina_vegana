minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.004,
		spread = {x = 100, y = 100, z = 100},
		seed = 7133,
		octaves = 3,
		persist = 0.6
	},
	y_min = 10,
	y_max = 90,
	decoration = "cucina_vegana:wild_soy",
})

minetest.register_craft({
	type = "fuel",
	recipe = "cucina_vegana:soy",
	burntime = 1,
})

minetest.register_craftitem("cucina_vegana:tofu", {
	description = "Tofu",
	inventory_image = "cucina_vegana_tofu.png",
	groups = {flammable = 1, food = 1, eatable = 1},
	on_use = minetest.item_eat(2),
})

minetest.register_craftitem("cucina_vegana:soy_milk", {
	description = "Soy Milk",
	inventory_image = "cucina_vegana_soy_milk.png",
	groups = {flammable = 1, food = 1, food_milk = 1, eatable = 1},
	on_use = minetest.item_eat(1, "vessels:drinking_glass"),
})

minetest.register_craftitem("cucina_vegana:tofu_cooked", {
	description = "Tofu (cooked)",
	inventory_image = "cucina_vegana_tofu_cooked.png",
	groups = {flammable = 1, food = 1, eatable = 1},
	on_use = minetest.item_eat(3),
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
	type = "cooking",
	output = "cucina_vegana:tofu_cooked",
	recipe = "cucina_vegana:tofu",
	cooktime = 5,
})

-- *** Additional Recipes with other Mods

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

minetest.register_alias("soy:tofu", "cucina_vegana:tofu")
minetest.register_alias("soy:tofu_cooked", "cucina_vegana:tofu_cooked")
minetest.register_alias("soy:milk", "cucina_vegana:soy_milk")