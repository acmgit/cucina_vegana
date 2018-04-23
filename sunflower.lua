
minetest.register_node("cucina_vegana:sunflower_seeds_oil", {
	description = "Bottle of Sunflower Seeds Oil",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_sunflower_seeds_oil.png"},
	inventory_image = "cucina_vegana_sunflower_seeds_oil.png",
	wield_image = "cucina_vegana_sunflower_seeds_oil.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(2, "vessels:glass_bottle"),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1, food = 1, food_oil = 1},
	sounds = default.node_sound_glass_defaults(),
})


-- sunflower Seeds
minetest.register_craftitem("cucina_vegana:sunflower_seeds", {
    description = "Sunflower Seeds",
    groups = {seed = 1, food = 1},
    inventory_image = "cucina_vegana_sunflower_seeds.png",
    on_use = minetest.item_eat(1),
})

-- sunflower Seeds Dough
minetest.register_craftitem("cucina_vegana:sunflower_seeds_dough", {
    description = "Sunflower Seeds Dough",
    groups = {food = 1},
    inventory_image = "cucina_vegana_sunflower_seeds_dough.png",
    on_use = minetest.item_eat(2),
})

-- sunflower Seeds Roasted
minetest.register_craftitem("cucina_vegana:sunflower_seeds_roasted", {
	description = "Roasted Sunflower Seeds",
	groups = {food = 1},
	inventory_image = "cucina_vegana_sunflower_seeds_roasted.png",
	on_use = minetest.item_eat(2),
})

-- sunflower Seeds Bread
minetest.register_craftitem("cucina_vegana:sunflower_seeds_bread", {
	description = "Sunflower Seeds Bread",
	groups = {food = 1},
	inventory_image = "cucina_vegana_sunflower_seeds_bread.png",
	on_use = minetest.item_eat(4),
})


-- to import the old mod in cucina_vegana
-- can deleted if you have a clean world.

minetest.register_alias("vegan_sunflower:seeds_dough", "cucina_vegana:sunflower_seeds_dough")
minetest.register_alias("vegan_sunflower:seeds", "cucina_vegana:sunflower_seeds")
minetest.register_alias("vegan_sunflower:seeds_oil", "cucina_vegana:sunflower_seeds_oil")
minetest.register_alias("vegan_sunflower:seeds_roasted", "cucina_vegana:sunflower_seeds_roasted")
minetest.register_alias("vegan_sunflower:seeds_bread", "cucina_vegana:sunflower_seeds_bread")
