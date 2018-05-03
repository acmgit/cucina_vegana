--   *******************************************
--   *****                 Items                       ***** 
--   *******************************************

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

minetest.register_craftitem("cucina_vegana:parsley", {
	description = "Parsley",
	inventory_image = "cucina_vegana_parsley.png",
	groups = {flammable = 1, food = 1, eatable = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("cucina_vegana:lettuce", {
	description = "Lettuce",
	inventory_image = "cucina_vegana_lettuce.png",
	groups = {flammable = 1, food = 1, eatable = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("cucina_vegana:kohlrabi", {
	description = "Kohlrabi",
	inventory_image = "cucina_vegana_kohlrabi.png",
	groups = {flammable = 1, food = 1, eatable = 1},
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:chives", {
	description = "Chives",
	inventory_image = "cucina_vegana_chives.png",
	groups = {flammable = 1, food = 1, eatable = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("cucina_vegana:asparagus", {
	description = "Asparagus",
	inventory_image = "cucina_vegana_asparagus.png",
	groups = {flammable = 1, food = 1, eatable = 1},
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:kohlrabi_roasted", {
	description = "Roasted Kohlrabi",
	groups = {food = 1},
	inventory_image = "cucina_vegana_kohlrabi_roasted.png",
	on_use = minetest.item_eat(4),
})

minetest.register_craftitem("cucina_vegana:sunflower_seeds", {
    description = "Sunflower Seeds",
    groups = {seed = 1, food = 1},
    inventory_image = "cucina_vegana_sunflower_seeds.png",
    on_use = minetest.item_eat(1),
})

minetest.register_craftitem("cucina_vegana:sunflower_seeds_dough", {
    description = "Sunflower Seeds Dough",
    groups = {food = 1},
    inventory_image = "cucina_vegana_sunflower_seeds_dough.png",
    on_use = minetest.item_eat(2),
})

minetest.register_craftitem("cucina_vegana:sunflower_seeds_roasted", {
	description = "Roasted Sunflower Seeds",
	groups = {food = 1},
	inventory_image = "cucina_vegana_sunflower_seeds_roasted.png",
	on_use = minetest.item_eat(2),
})

minetest.register_craftitem("cucina_vegana:sunflower_seeds_bread", {
	description = "Sunflower Seeds Bread",
	groups = {food = 1},
	inventory_image = "cucina_vegana_sunflower_seeds_bread.png",
	on_use = minetest.item_eat(4),
})

minetest.register_craftitem("cucina_vegana:imitation_meat", {
	description = "Imitation Meat",
	groups = {food = 1, food_meat = 1},
	inventory_image = "cucina_vegana_imitation_meat.png",
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:imitation_butter", {
	description = "Imitation Butter",
	groups = {food = 1, food_butter = 1},
	inventory_image = "cucina_vegana_imitation_butter.png",
	on_use = minetest.item_eat(2),
})

minetest.register_craftitem("cucina_vegana:imitation_cheese", {
	description = "Imitation Cheese",
	groups = {food = 1, food_cheese = 1},
	inventory_image = "cucina_vegana_imitation_cheese.png",
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:imitation_fish", {
	description = "Imitation Fish",
	groups = {food = 1, food_fish = 1},
	inventory_image = "cucina_vegana_imitation_fish.png",
	on_use = minetest.item_eat(3),
})
