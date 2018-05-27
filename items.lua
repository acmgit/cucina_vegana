--   *******************************************
--   *****                 Items                       ***** 
--   *******************************************

-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

minetest.register_craftitem("cucina_vegana:tofu", {
	description = S("Tofu (raw)"),
	inventory_image = "cucina_vegana_tofu.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1},
	on_use = minetest.item_eat(2),
})

minetest.register_craftitem("cucina_vegana:soy_milk", {
	description = S("Soy Milk"),
	inventory_image = "cucina_vegana_soy_milk.png",
	groups = {flammable = 1, food = 1, food_milk = 1, eatable = 1, food_vegan = 1},
	on_use = minetest.item_eat(1, "vessels:drinking_glass"),
})

minetest.register_craftitem("cucina_vegana:tofu_cooked", {
	description = S("Tofu"),
	inventory_image = "cucina_vegana_tofu_cooked.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1},
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:parsley", {
	description = S("Parsley"),
	inventory_image = "cucina_vegana_parsley.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("cucina_vegana:lettuce", {
	description = S("Lettuce"),
	inventory_image = "cucina_vegana_lettuce.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("cucina_vegana:kohlrabi", {
	description = S("Kohlrabi"),
	inventory_image = "cucina_vegana_kohlrabi.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1},
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:chives", {
	description = S("Chives"),
	inventory_image = "cucina_vegana_chives.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("cucina_vegana:asparagus", {
	description = S("Asparagus"),
	inventory_image = "cucina_vegana_asparagus.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1},
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:kohlrabi_roasted", {
	description = S("Roasted Kohlrabi"),
	groups = {food = 1},
	inventory_image = "cucina_vegana_kohlrabi_roasted.png",
	on_use = minetest.item_eat(4),
})

minetest.register_craftitem("cucina_vegana:rice", {
    description = S("Rice"),
    inventory_image = "cucina_vegana_rice.png",
    groups = {flammable = 4},
})

minetest.register_craftitem("cucina_vegana:soy", {
	description = S("Soy Bean"),
	inventory_image = "cucina_vegana_soy.png",
	groups = {flammable = 4},
})

minetest.register_craftitem("cucina_vegana:sunflower", {
    description = S("Sunflower"),
    inventory_image = "cucina_vegana_sunflower.png",
    groups = {flammable = 4},
})

minetest.register_craftitem("cucina_vegana:sunflower_seeds", {
    description = S("Sunflower Seeds"),
    groups = {seed = 1, food = 1},
    inventory_image = "cucina_vegana_sunflower_seeds.png",
    on_use = minetest.item_eat(1),
})

minetest.register_craftitem("cucina_vegana:sunflower_seeds_dough", {
    description = S("Sunflower Seeds Dough"),
    groups = {food = 1, food_vegan = 1},
    inventory_image = "cucina_vegana_sunflower_seeds_dough.png",
    on_use = minetest.item_eat(2),
})

minetest.register_craftitem("cucina_vegana:sunflower_seeds_roasted", {
	description = S("Roasted Sunflower Seeds"),
	groups = {food = 1},
	inventory_image = "cucina_vegana_sunflower_seeds_roasted.png",
	on_use = minetest.item_eat(2),
})

minetest.register_craftitem("cucina_vegana:sunflower_seeds_bread", {
	description = S("Sunflower Seeds Bread"),
	groups = {food = 1, food_bread = 1},
	inventory_image = "cucina_vegana_sunflower_seeds_bread.png",
	on_use = minetest.item_eat(4),
})

minetest.register_craftitem("cucina_vegana:imitation_meat", {
	description = S("Imitation Meat"),
	groups = {food = 1, food_meat = 1, food_vegan = 1},
	inventory_image = "cucina_vegana_imitation_meat.png",
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:imitation_butter", {
	description = S("Imitation Butter"),
	groups = {food = 1, food_butter = 1, food_vegan = 1},
	inventory_image = "cucina_vegana_imitation_butter.png",
	on_use = minetest.item_eat(2),
})

minetest.register_craftitem("cucina_vegana:imitation_cheese", {
	description = S("Imitation Cheese"),
	groups = {food = 1, food_cheese = 1, food_vegan = 1},
	inventory_image = "cucina_vegana_imitation_cheese.png",
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:imitation_fish", {
	description = S("Imitation Fish"),
	groups = {food = 1, food_fish = 1, food_vegan = 1},
	inventory_image = "cucina_vegana_imitation_fish.png",
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:rosemary", {
	description = S("Rosemary Twig"),
	inventory_image = "cucina_vegana_rosemary.png",
	groups = {flammable = 1, food = 1, eatable = 1},
	on_use = minetest.item_eat(1),
})

