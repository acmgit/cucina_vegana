--   *******************************************
--   *****                 Items           *****
--   *******************************************

-- Load support for intllib.
local S = cucina_vegana.get_translator

--   *******************************************
--   *****           Supports              *****
--   *******************************************

minetest.register_craftitem("cucina_vegana:blueberry_puree", {
	description = S("Blueberry puree"),
	inventory_image = "cucina_vegana_blueberry_puree.png",
	groups = {food = 1, food_blueberry = 1, food_berry = 1},
    on_use = minetest.item_eat(4)
})

minetest.register_craftitem("cucina_vegana:blueberry_pot", {
	description = S("Blueberry pot"),
	inventory_image = "cucina_vegana_blueberry_pot.png",
	groups = {sud = 1},
})

minetest.register_craftitem("cucina_vegana:blueberry_pot_cooked", {
	description = S("Blueberry pot (cooked)"),
	inventory_image = "cucina_vegana_blueberry_pot_cooked.png",
	groups = {sud = 1},
})

minetest.register_craftitem("cucina_vegana:ciabatta_dough", {
	description = S("Ciabatta dough"),
	inventory_image = "cucina_vegana_ciabatta_dough.png",
	groups = {food = 1, bread_dough = 1},
})

minetest.register_craftitem("cucina_vegana:dandelion_honey", {
	description = S("Dandelion Honey"),
	inventory_image = "cucina_vegana_dandelion_honey.png",
	groups = {flammable = 1, food = 1, food_honey = 1, food_sugar = 1, eatable = 1},
    on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:dandelion_suds", {
	description = S("Dandelion Suds"),
	inventory_image = "cucina_vegana_dandelion_suds.png",
	groups = {sud = 1,},
})

minetest.register_craftitem("cucina_vegana:dandelion_suds_cooking", {
	description = S("Dandelion Suds (cooking)"),
	inventory_image = "cucina_vegana_dandelion_suds_cooking.png",
	groups = {sud = 1,},
})

minetest.register_craftitem("cucina_vegana:molasses", {
	description = S("Molasses"),
	inventory_image = "cucina_vegana_molasses.png",
	groups = {flammable = 1, food = 1, food_sugar = 1},
})

minetest.register_craftitem("cucina_vegana:pizza_dough", {
	description = S("Pizzadough"),
	inventory_image = "cucina_vegana_pizza_dough.png",
	groups = {food = 1, pizza_dough = 1},
})

minetest.register_craftitem("cucina_vegana:rice_flour", {
    description = S("Rice Flour"),
    groups = {food_vegan = 1, food_flour = 1},
    inventory_image = "cucina_vegana_rice_flour.png",
})

minetest.register_craftitem("cucina_vegana:rice_starch", {
    description = S("Rice Starch"),
    groups = {food_vegan = 1, food_starch = 1},
    inventory_image = "cucina_vegana_rice_starch.png",
})

minetest.register_craftitem("cucina_vegana:soy_milk", {
	description = S("Soy Milk"),
	inventory_image = "cucina_vegana_soy_milk.png",
	groups = {flammable = 1, food = 1, food_milk = 1, eatable = 1, food_vegan = 1},
	on_use = minetest.item_eat(2, "vessels:drinking_glass"),
})

minetest.register_craftitem("cucina_vegana:sunflower_seeds_dough", {
    description = S("Sunflower Seeds Dough"),
    groups = {food = 1, food_vegan = 1, eatable = 1, bread_dough = 1},
    inventory_image = "cucina_vegana_sunflower_seeds_dough.png",
    on_use = minetest.item_eat(2),
})

minetest.register_craftitem("cucina_vegana:sunflower_seeds_flour", {
    description = S("Sunflower Seeds Flour"),
    groups = {food_vegan = 1, food_flour = 1},
    inventory_image = "cucina_vegana_sunflower_seeds_flour.png",
})

minetest.register_craftitem("cucina_vegana:tofu", {
	description = S("Tofu (raw)"),
	inventory_image = "cucina_vegana_tofu.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1},
	on_use = minetest.item_eat(2),
})

--   *******************************************
--   *****           Imitations            *****
--   *******************************************

minetest.register_craftitem("cucina_vegana:imitation_butter", {
	description = S("Imitation Butter"),
	groups = {food = 1, food_butter = 1, food_vegan = 1, eatable = 1},
	inventory_image = "cucina_vegana_imitation_butter.png",
	on_use = minetest.item_eat(2),
})

minetest.register_craftitem("cucina_vegana:imitation_cheese", {
	description = S("Imitation Cheese"),
	groups = {food = 1, food_cheese = 1, food_vegan = 1, eatable = 1},
	inventory_image = "cucina_vegana_imitation_cheese.png",
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:imitation_fish", {
	description = S("Imitation Fish"),
	groups = {food = 1, food_fish = 1, food_vegan = 1, eatable = 1},
	inventory_image = "cucina_vegana_imitation_fish.png",
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:imitation_meat", {
	description = S("Imitation Meat"),
	groups = {food = 1, food_meat = 1, food_vegan = 1, eatable = 1, food_meat_raw = 1},
	inventory_image = "cucina_vegana_imitation_meat.png",
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:imitation_poultry", {
	description = S("Imitation poultry"),
	groups = {food = 1, food_bird = 1, food_vegan = 1},
	inventory_image = "cucina_vegana_imitation_poultry.png",
})

--   *******************************************
--   *****             Crops               *****
--   *******************************************

minetest.register_craftitem("cucina_vegana:asparagus", {
	description = S("Asparagus"),
	inventory_image = "cucina_vegana_asparagus.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1, food_asparagus = 1},
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:banana", {
	description = S("Banana"),
	inventory_image = "cucina_vegana_banana.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1, food_banana = 1},
	on_use = minetest.item_eat(4),
})

minetest.register_craftitem("cucina_vegana:chives", {
	description = S("Chives"),
	inventory_image = "cucina_vegana_chives.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1, food_chives = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("cucina_vegana:coffee_beans_raw", {
	description = S("Coffee Beans raw"),
	inventory_image = "cucina_vegana_coffee_beans_raw.png",
	groups = {flammable = 1, food_coffee = 1},
})

minetest.register_craftitem("cucina_vegana:coffee_beans_roasted", {
	description = S("Coffee Beans"),
	inventory_image = "cucina_vegana_coffee_beans_roasted.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1, food_coffee = 1},
	on_use = minetest.item_eat(.5),
})

minetest.register_craftitem("cucina_vegana:coffee_powder", {
	description = S("Coffee Powder"),
	inventory_image = "cucina_vegana_coffee_powder.png",
	groups = {flammable = 1, food_coffee = 1},
})

minetest.register_craftitem("cucina_vegana:flax", {
	description = S("Flax (raw)"),
	inventory_image = "cucina_vegana_flax_raw.png",
	groups = {flammable = 1, string = 1},
})

minetest.register_craftitem("cucina_vegana:flax_roasted", {
	description = S("Flax"),
	inventory_image = "cucina_vegana_flax.png",
	groups = {flammable = 1, string = 1},
})

minetest.register_craftitem("cucina_vegana:kohlrabi", {
	description = S("Kohlrabi"),
	inventory_image = "cucina_vegana_kohlrabi.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1, food_kohlrabi = 1},
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:lettuce", {
	description = S("Lettuce"),
	inventory_image = "cucina_vegana_lettuce.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1, food_lettuce = 1},
	on_use = minetest.item_eat(2),
})

minetest.register_craftitem("cucina_vegana:parsley", {
	description = S("Parsley"),
	inventory_image = "cucina_vegana_parsley.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1, food_parsley = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("cucina_vegana:peanut", {
	description = S("Peanut"),
	inventory_image = "cucina_vegana_peanut.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1, food_peanut = 1},
	on_use = minetest.item_eat(4),
})

minetest.register_craftitem("cucina_vegana:rice", {
    description = S("Rice"),
    inventory_image = "cucina_vegana_rice.png",
    groups = {food = 1, flammable = 4, food_rice = 1},
})

minetest.register_craftitem("cucina_vegana:rosemary", {
	description = S("Rosemary Twig"),
	inventory_image = "cucina_vegana_rosemary.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_rosemary = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("cucina_vegana:soy", {
	description = S("Soy Bean"),
	inventory_image = "cucina_vegana_soy.png",
	groups = {flammable = 4, food_soy = 1},
})

minetest.register_craftitem("cucina_vegana:sunflower", {
    description = S("Sunflower"),
    inventory_image = "cucina_vegana_sunflower.png",
    groups = {flammable = 4},
})

minetest.register_craftitem("cucina_vegana:sunflower_seeds", {
    description = S("Sunflower Seeds"),
    groups = {seed = 1, food = 1, eatable = 1, food_sunflower = 1},
    inventory_image = "cucina_vegana_sunflower_seeds.png",
    on_use = minetest.item_eat(1),
})

minetest.register_craftitem("cucina_vegana:tomato", {
	description = S("Tomato"),
	inventory_image = "cucina_vegana_tomato.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1, food_tomato = 1},
	on_use = minetest.item_eat(4),
})

minetest.register_craftitem("cucina_vegana:potato", {
	description = S("Potato"),
	inventory_image = "cucina_vegana_potato.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1, food_potato = 1},
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("cucina_vegana:carrot", {
	description = S("Carrot"),
	inventory_image = "cucina_vegana_carrot.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1, food_carrot = 1},
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:garlic", {
	description = S("Garlic"),
	inventory_image = "cucina_vegana_garlic.png",
	groups = {flammable = 1, food = 1, food_vegan = 1, food_garlic = 1},
})

minetest.register_craftitem("cucina_vegana:chili", {
	description = S("Chili"),
	inventory_image = "cucina_vegana_chili.png",
	groups = {flammable = 1, food = 1, food_vegan = 1, food_chili = 1},
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("cucina_vegana:onion", {
	description = S("Onion"),
	inventory_image = "cucina_vegana_onion.png",
	groups = {flammable = 1, food = 1, food_vegan = 1, food_onion = 1},
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:cucumber", {
	description = S("Cucumber"),
	inventory_image = "cucina_vegana_cucumber.png",
	groups = {flammable = 1, food = 1, food_vegan = 1, food_onion = 1},
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:strawberry", {
	description = S("Strawberry"),
	inventory_image = "cucina_vegana_strawberry.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1, food_strawberry = 1},
	on_use = minetest.item_eat(2),
})

minetest.register_craftitem("cucina_vegana:corn", {
	description = S("Corncob"),
	inventory_image = "cucina_vegana_corn.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1, food_corn = 1},
	on_use = minetest.item_eat(2),
})

--   *******************************************
--   *****              Food               *****
--   *******************************************

minetest.register_craftitem("cucina_vegana:kohlrabi_roasted", {
	description = S("Roasted Kohlrabi"),
	groups = {food = 1, eatable = 1},
	inventory_image = "cucina_vegana_kohlrabi_roasted.png",
	on_use = minetest.item_eat(4),
})

minetest.register_craftitem("cucina_vegana:sunflower_seeds_roasted", {
	description = S("Roasted Sunflower Seeds"),
	groups = {food = 1, eatable = 1},
	inventory_image = "cucina_vegana_sunflower_seeds_roasted.png",
	on_use = minetest.item_eat(2),
})

minetest.register_craftitem("cucina_vegana:sunflower_seeds_bread", {
	description = S("Sunflower Seeds Bread"),
	groups = {food = 1, food_bread = 1, eatable = 1},
	inventory_image = "cucina_vegana_sunflower_seeds_bread.png",
	on_use = minetest.item_eat(4),
})

minetest.register_craftitem("cucina_vegana:tofu_cooked", {
	description = S("Tofu"),
	inventory_image = "cucina_vegana_tofu_cooked.png",
	groups = {flammable = 1, food = 1, eatable = 1, food_vegan = 1, food_tofu = 1},
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("cucina_vegana:vegan_sushi", {
	description = S("Vegan Sushi"),
	groups = {food = 1, food_vegan = 1, eatable = 1},
	inventory_image = "cucina_vegana_vegan_sushi.png",
	on_use = minetest.item_eat(4),
})

minetest.register_craftitem("cucina_vegana:vegan_strawberry_milk", {
	description = S("Vegan Strawberry Milk"),
	groups = {food = 1, food_vegan = 1, eatable = 1},
	inventory_image = "cucina_vegana_vegan_strawberry_milk.png",
	on_use = minetest.item_eat(3, "vessels:drinking_glass"),
})
