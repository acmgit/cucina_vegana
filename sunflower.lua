-- sunflower Seeds
minetest.register_craftitem("cucina_vegana:sunflower_seeds", {
    description = "Sunflower Seeds",
    groups = {seed = 1, food = 1},
    inventory_image = "cucina_vegana_sunflower_seeds.png",
    on_use = minetest.item_eat(1),
})

minetest.register_craft({
	type = "fuel",
	recipe = "cucina_vegana:sunflower_seeds",
	burntime = 2
})

minetest.register_craft({
	type = "shapeless",
	output = "cucina_vegana:sunflower_seeds 4",
	recipe = {"flowers:sunflower"},
	replacements = {
		{"flowers:sunflower", "dye:yellow"}
	}
})

-- sunflower Seeds Dough
minetest.register_craftitem("cucina_vegana:sunflower_seeds_dough", {
    description = "Sunflower Seeds Dough",
    groups = {food = 1},
    inventory_image = "cucina_vegana_sunflower_seeds_dough.png",
    on_use = minetest.item_eat(2),
})

minetest.register_craft({
	output = "cucina_vegana:sunflower_seeds_dough",
	recipe = {	{"", "cucina_vegana:sunflower_seeds", ""},
				{"farming:flour", "farming:flour", "farming:flour"}
			}
})

-- sunflower Seeds Oil

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

minetest.register_craft({
	output = "cucina_vegana:sunflower_seeds_oil",
	recipe = {	{"cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds"},
				{"cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds"},
				{"", "vessels:glass_bottle", ""}
			}
})

minetest.register_craft({
	type = "fuel",
	recipe = "cucina_vegana:sunflower_seeds_oil",
	burntime = 20,
	replacements = {{ "cucina_vegana:sunflower_seeds_oil", "vessels:glass_bottle"}}
})

-- sunflower Seeds Roasted
minetest.register_craftitem("cucina_vegana:sunflower_seeds_roasted", {
	description = "Roasted Sunflower Seeds",
	groups = {food = 1},
	inventory_image = "cucina_vegana_sunflower_seeds_roasted.png",
	on_use = minetest.item_eat(2),
})

minetest.register_craft({
	type = "fuel",
	recipe = "cucina_vegana:sunflower_seeds_roasted",
	burntime = 2
})
-- sunflower Seeds Bread
minetest.register_craftitem("cucina_vegana:sunflower_seeds_bread", {
	description = "Sunflower Seeds Bread",
	groups = {food = 1},
	inventory_image = "cucina_vegana_sunflower_seeds_bread.png",
	on_use = minetest.item_eat(4),
})

-- cooking Recipes
minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "cucina_vegana:sunflower_seeds_bread",
	recipe = "cucina_vegana:sunflower_seeds_dough"
})

minetest.register_craft({
	type = "cooking",
	output = "cucina_vegana:sunflower_seeds_roasted",
	recipe = "cucina_vegana:sunflower_seeds"
})


-- to import the old mod in cucina_vegana
-- can deleted if you have a clean world.

minetest.register_alias("vegan_sunflower:seeds_dough", "cucina_vegana:sunflower_seeds_dough")
minetest.register_alias("vegan_sunflower:seeds", "cucina_vegana:sunflower_seeds")
minetest.register_alias("vegan_sunflower:seeds_oil", "cucina_vegana:sunflower_seeds_oil")
minetest.register_alias("vegan_sunflower:seeds_roasted", "cucina_vegana:sunflower_seeds_roasted")
minetest.register_alias("vegan_sunflower:seeds_bread", "cucina_vegana:sunflower_seeds_bread")
