--   *******************************************
--   *****                 Nodes                       ***** 
--   *******************************************

minetest.register_node("cucina_vegana:plate", {
	description = "Plate",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_plate.png"},
	inventory_image = "cucina_vegana_plate.png",
	wield_image = "cucina_vegana_plate.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1, food_plate=1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:bowl", {
	description = "Glass Bowl",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_bowl.png"},
	inventory_image = "cucina_vegana_bowl.png",
	wield_image = "cucina_vegana_bowl.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1, food_bowl=1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:salad_bowl", {
	description = "Glass Salad Bowl",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_salad_bowl.png"},
	inventory_image = "cucina_vegana_salad_bowl.png",
	wield_image = "cucina_vegana_salad_bowl.png",
	on_use = minetest.item_eat(4, "cucina_vegana:bowl"),
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:kohlrabi_soup", {
	description = "Kohlrabi Soup (raw)",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_kohlrabi_soup.png"},
	inventory_image = "cucina_vegana_kohlrabi_soup.png",
	wield_image = "cucina_vegana_kohlrabi_soup.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1, food_soup = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:kohlrabi_soup_cooked", {
	description = "Kohlrabi Soup",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_kohlrabi_soup_cooked.png"},
	inventory_image = "cucina_vegana_kohlrabi_soup_cooked.png",
	wield_image = "cucina_vegana_kohlrabi_soup_cooked.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(5,  "cucina_vegana:plate"),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:soy_soup", {
	description = "Soy Soup (raw)",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_soy_soup.png"},
	inventory_image = "cucina_vegana_soy_soup.png",
	wield_image = "cucina_vegana_soy_soup.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1, food_soup = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("cucina_vegana:soy_soup_cooked", {
	description = "Soy Soup",
	drawtype = "plantlike",
	tiles = {"cucina_vegana_soy_soup_cooked.png"},
	inventory_image = "cucina_vegana_soy_soup_cooked.png",
	wield_image = "cucina_vegana_soy_soup_cooked.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(5,  "cucina_vegana:plate"),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

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

minetest.register_craftitem("cucina_vegana:kohlrabi_roasted", {
	description = "Roasted Kohlrabi",
	groups = {food = 1},
	inventory_image = "cucina_vegana_kohlrabi_roasted.png",
	on_use = minetest.item_eat(4),
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

--   *******************************************
--   *****                 Crafts                       ***** 
--   *******************************************

minetest.register_craft({
	output = "cucina_vegana:sunflower_seeds_oil",
	recipe = {	{"cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds"},
				{"cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds", "cucina_vegana:sunflower_seeds"},
				{"", "vessels:glass_bottle", ""}
			}
})


minetest.register_craft({
	output = "cucina_vegana:sunflower_seeds_dough",
	recipe = {	{"", "cucina_vegana:sunflower_seeds", ""},
				{"farming:flour", "farming:flour", "farming:flour"}
			}
})

minetest.register_craft({
	type = "shapeless",
	output = "cucina_vegana:sunflower_seeds 4",
	recipe = {"flowers:sunflower"},
	replacements = {
		{"flowers:sunflower", "dye:yellow"}
	}
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
	output = "cucina_vegana:bowl 5",
	recipe = {	{"default:glass", "", "default:glass"},
				{"default:glass", "default:glass", "default:glass"}
			}
})

minetest.register_craft({
	output = "cucina_vegana:plate 5",
	recipe = {	{"group:wood", "", "group:wood"},
				{"group:wood", "group:wood", "group:wood"}
			}
})

minetest.register_craft({
	output = "cucina_vegana:plate 2",
	recipe = {	{"default:clay_lump", "", "default:clay_lump"},
				{"default:clay_lump", "default:clay_lump", "default:clay_lump"}
			}
})

minetest.register_craft({
	output = "cucina_vegana:plate 10",
	recipe = {	{"default:steel_ingot", "", "default:steel_ingot"},
				{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"}
			}
})

minetest.register_craft({
	output = "cucina_vegana:plate 10",
	recipe = {	{"default:copper_ingot", "", "default:copper_ingot"},
				{"default:copper_ingot", "default:copper_ingot", "default:copper_ingot"}
			}
})

minetest.register_craft({
	output = "cucina_vegana:plate 10",
	recipe = {	{"default:tin_ingot", "", "default:tin_ingot"},
				{"default:tin_ingot", "default:tin_ingot", "default:tin_ingot"}
			}
})


minetest.register_craft({
	output = "cucina_vegana:salad_bowl",
	recipe = {	{"cucina_vegana:parsley", "cucina_vegana:lettuce", "cucina_vegana:chives"},
				{"", "group:food_oil", ""},
				{"", "group:food_bowl", ""}
			}
})

minetest.register_craft({
	output = "cucina_vegana:kohlrabi_soup",
	recipe = {	{"cucina_vegana:kohlrabi", "group:food_oil", "cucina_vegana:parsley"},
				{"", "bucket:bucket_water", ""},
				{"", "group:food_plate", ""}
			},
			replacements = {{"bucket:bucket_water", "bucket:bucket_empty"},
						   {"group:food_oil", "vessels:glass_bottle"},
						}
})

minetest.register_craft({
	output = "cucina_vegana:kohlrabi_soup",
	recipe = {	{"cucina_vegana:kohlrabi", "group:food_oil", "cucina_vegana:parsley"},
				{"", "bucket:bucket_river_water", ""},
				{"", "group:food_plate", ""}
			},
			replacements = {{"bucket:bucket_river_water", "bucket:bucket_empty"},
						   {"group:food_oil", "vessels:glas_bottle"},
						}
})

minetest.register_craft({
	output = "cucina_vegana:soy_soup",
	recipe = {	{"cucina_vegana:chives", "group:food_oil", "cucina_vegana:parsley"},
				{"", "cucina_vegana:soy_milk", ""},
				{"", "group:food_plate", ""}
			},
			replacements = {{"group:food_milk", "vessels:glass_bottle"},
						   {"group:food_oil", "vessels:glass_bottle"},
						}
})

--   *******************************************
--   *****                 Cookings                   ***** 
--   *******************************************
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

minetest.register_craft({
	type = "cooking",
	output = "cucina_vegana:tofu_cooked",
	recipe = "cucina_vegana:tofu",
	cooktime = 5,
})

minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	output = "cucina_vegana:kohlrabi_roasted",
	recipe = "cucina_vegana:kohlrabi"
})

minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "cucina_vegana:kohlrabi_soup_cooked",
	recipe = "cucina_vegana:kohlrabi_soup"
})

minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "cucina_vegana:soy_soup_cooked",
	recipe = "cucina_vegana:soy_soup"
})

--   *******************************************
--   *****                 Fuels                        ***** 
--   *******************************************

minetest.register_craft({
	type = "fuel",
	recipe = "cucina_vegana:sunflower_seeds_oil",
	burntime = 20,
	replacements = {{ "cucina_vegana:sunflower_seeds_oil", "vessels:glass_bottle"}}
})

minetest.register_craft({
	type = "fuel",
	recipe = "cucina_vegana:sunflower_seeds",
	burntime = 2
})

minetest.register_craft({
	type = "fuel",
	recipe = "cucina_vegana:sunflower_seeds_roasted",
	burntime = 2
})

minetest.register_craft({
	type = "fuel",
	recipe = "cucina_vegana:soy",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "cucina_vegana:parsley",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "cucina_vegana:lettuce",
	burntime = 2,
})

minetest.register_craft({
	type = "fuel",
	recipe = "cucina_vegana:lettuce_oil",
	burntime = 20,
	replacements = {{ "cucina_vegana:lettuce_oil", "vessels:glass_bottle"}}
})

minetest.register_craft({
	type = "fuel",
	recipe = "cucina_vegana:kohlrabi",
	burntime = 3,
})

minetest.register_craft({
	type = "fuel",
	recipe = "cucina_vegana:kohlrabi_roasted",
	burntime = 4
})

minetest.register_craft({
	type = "fuel",
	recipe = "cucina_vegana:chives",
	burntime = 1,
})

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

