
    local cv_items = {
      --                Name                          Saturation      Replace with                Poison  Heal    Sound
      -- crops
      {'cucina_vegana:asparagus',                     3,              nil,                        nil,    nil,    nil},
      {'cucina_vegana:chives',                        1,              nil,                        nil,    nil,    nil},
      {'cucina_vegana:kohlrabi',                      3,              nil,                        nil,    nil,    nil},
      {'cucina_vegana:lettuce',                       2,              nil,                        nil,    nil,    nil},
      {'cucina_vegana:parsley',                       1,              nil,                        nil,    nil,    nil},
      {'cucina_vegana:peanut',                        3,              nil,                        nil,    nil,    nil},
      {'cucina_vegana:rosemary',                      1,              nil,                        nil,    nil,    nil},
      {'cucina_vegana:sunflower_seeds',               1,              nil,                        nil,    nil,    nil},

      --               Name                          Saturation      Replace with                Poison  Heal    Sound
      -- side dishes
      {'cucina_vegana:ciabatta_bread',                4,              nil,                        nil,    nil,    nil},
      {'cucina_vegana:blueberry_jam',                 8,              'vessels:glass_bottle',     nil,    nil,    nil},
      {'cucina_vegana:blueberry_puree',               4,              nil,                        nil,    nil,    nil},
      {'cucina_vegana:dandelion_honey',               3,              'vessels:glass_bottle',     nil,    nil,    nil},
      {'cucina_vegana:edamame_cooked',                3,              'cucina_vegana:plate',      nil,    0.1,    nil},
      {'cucina_vegana:flax_seed_oil',                 2,              'vessels:glass_bottle',     nil,    nil,    nil},
      {'cucina_vegana:kohlrabi_roasted',              4,              nil,                        nil,    nil,    nil},
      {'cucina_vegana:lettuce_oil',                   2,              'vessels:glass_bottle',     nil,    nil,    nil},
      {'cucina_vegana:peanut_oil',                    4,              'vessels:glass_bottle',     nil,    nil,    nil},
      {'cucina_vegana:peanut_butter',                 7,              'vessels:glass_bottle',     nil,    nil,    nil},
      {'cucina_vegana:salad_bowl',                    4,              'cucina_vegana:bowl',       nil,    nil,    nil},
      {'cucina_vegana:sauce_hollandaise',             3,              'vessels:glass_bottle',     nil,    nil,    nil},
      {'cucina_vegana:sunflower_seeds_oil',           3,              'vessels:glass_bottle',     nil,    nil,    nil},
      {'cucina_vegana:soy_milk',                      1,              'vessels:drinking_glass',   nil,    0.5,    nil},

      --               Name                          Saturation      Replace with                Poison  Heal    Sound
      -- eatable raws
      {'cucina_vegana:imitation_butter',              2,              nil,                        nil,    0.5,    nil},
      {'cucina_vegana:imitation_cheese',              3,              nil,                        nil,    0.5,    nil},
      {'cucina_vegana:imitation_fish',                3,              nil,                        nil,    0.5,    nil},
      {'cucina_vegana:imitation_meat',                3,              nil,                        nil,    0.5,    nil},
      {'cucina_vegana:sunflower_seeds_dough',         2,              nil,                        nil,    0.5,    nil},
      {'cucina_vegana:tofu',                          2,              nil,                        nil,    0.5,    nil},

      --               Name                          Saturation      Replace with                Poison  Heal    Sound
                -- dinners
      {'cucina_vegana:asparagus_hollandaise_cooked',  5,              'cucina_vegana:plate',      nil,    1.5,    nil},
      {'cucina_vegana:asparagus_rice_cooked',         6,              'cucina_vegana:plate',      nil,    1.5,    nil},
      {'cucina_vegana:asparagus_soup_cooked',         5,              'cucina_vegana:plate',      nil,    0.5,    nil},
      {'cucina_vegana:bowl_rice_cooked',              4,              'cucina_vegana:bowl',       nil,    nil,    nil},
      {'cucina_vegana:fish_parsley_rosemary_cooked',  6,              'cucina_vegana:plate',      nil,    1.5,    nil},
      {'cucina_vegana:fryer',                         8,              nil,                        nil,    3.0,    nil},
      {'cucina_vegana:kohlrabi_soup_cooked',          5,              'cucina_vegana:plate',      nil,    1.5,    nil},
      {'cucina_vegana:pizza_vegana',                  6,              nil,                        nil,    2.0,    nil},
      {'cucina_vegana:pizza_funghi',                  6,              nil,                        nil,    2.0,    nil},
      {'cucina_vegana:salad_hollandaise',             4,              'cucina_vegana:bowl',       nil,    nil,    nil},
      {'cucina_vegana:sea_salad',                     5,              'cucina_vegana:bowl',       nil,    1.5,    nil},
      {'cucina_vegana:soy_soup_cooked',               5,              'cucina_vegana:plate',      nil,    0.5,    nil},
      {'cucina_vegana:sunflower_seeds_bread',         4,              nil,                        nil,    0.5,    nil},
      {'cucina_vegana:sunflower_seeds_roasted',       3,              nil,                        nil,    nil,    nil},
      {'cucina_vegana:tofu_chives_rosemary_cooked',   6,              'cucina_vegana:plate',      nil,    2.0,    nil},
      {'cucina_vegana:tofu_cooked',                   3,              nil,                        nil,    nil,    nil},
      {'cucina_vegana:vegan_sushi',                   4,              nil,                        nil,    1.5,    nil},

    } -- civ_items

--   *******************************************
--   *****           Technic-Support       *****
--   *******************************************

if(minetest.get_modpath("technic")) then


	-- Support Compressor
	local compressor_recipes = {
                    {"cucina_vegana:kohlrabi 6", "cucina_vegana:molasses"},
                    {"cucina_vegana:sunflower_seeds 6", "cucina_vegana:sunflower_seeds_oil"},
                    {"cucina_vegana:soy 8", "cucina_vegana:tofu"},
                    {"default:blueberries 6", "cucina_vegana:blueberry_puree"},
                    {"farming:blueberries 6", "cucina_vegana:blueberry_puree"},
                    {"bushes:blueberry 6", "cucina_vegana:blueberry_puree"},
                }

    if(cucina_vegana.farming_default) then
            table.insert(compressor_recipes,{"cucina_vegana:seed_lettuce 6", "cucina_vegana:lettuce_oil"})
            table.insert(compressor_recipes,{"cucina_vegana:seed_flax 6", "cucina_vegana:flax_seed_oil"})
            table.insert(compressor_recipes,{"cucina_vegana:seed_peanut 6", "cucina_vegana:peanut_oil"})

    else
            table.insert(compressor_recipes,{"cucina_vegana:lettuce_seed 6", "cucina_vegana:lettuce_oil"})
            table.insert(compressor_recipes,{"cucina_vegana:flax_seed 6", "cucina_vegana:flax_seed_oil"})
            table.insert(compressor_recipes,{"cucina_vegana:peanut_seed 6", "cucina_vegana:peanut_oil"})

    end -- if(cucina_vegana.farming_default

	for _, data in pairs(compressor_recipes) do

		technic.register_compressor_recipe({input = {data[1]}, output = data[2]})

	end

	-- Support Centrifuge
	local centrifuge_recipes = {
					{ "flowers:sunflower",             "cucina_vegana:sunflower_seeds 4",       "dye:yellow"      },
                    { "cucina_vegana:sunflower",       "cucina_vegana:sunflower_seeds 4",       "dye:yellow"      },
                    { "cucina_vegana:kohlrabi 4",      "cucina_vegana:molasses",                "default:leaves"  },
				}

	for _, data in pairs(centrifuge_recipes) do

		technic.register_separating_recipe({ input = { data[1] }, output = { data[2], data[3], data[4] } })

	end

	-- Support Extractor
	local extractor_recipes = {
		{"flowers:sunflower", "cucina_vegana:sunflower_seeds 4"},
        {"cucina_vegana:sunflower_seeds 6", "cucina_vegana:sunflower_seeds_oil"},
        {"cucina_vegana:sunflower", "cucina_vegana:sunflower_seeds 4"},
        {"cucina_vegana:kohlrabi 3", "cucina_vegana:molasses"},
        {"cucina_vegana:molasses", "bushes:sugar 2"},
        {"cucina_vegana:soy 4", "cucina_vegana:soy_milk"},
	}

    -- Special Recipes with Seeds
    if(cucina_vegana.farming_default) then
        table.insert(extractor_recipes,{"cucina_vegana:seed_lettuce 6", "cucina_vegana:lettuce_oil"})
        table.insert(extractor_recipes,{"cucina_vegana:seed_flax 6", "cucina_vegana:flax_seed_oil"})
        table.insert(extractor_recipes,{"cucina_vegana:seed_peanut 6", "cucina_vegana:peanut_oil"})

    else
        table.insert(extractor_recipes,{"cucina_vegana:lettuce_seed 6", "cucina_vegana:lettuce_oil"})
        table.insert(extractor_recipes,{"cucina_vegana:flax_seed 6", "cucina_vegana:flax_seed_oil"})
        table.insert(extractor_recipes,{"cucina_vegana:peanut_seed 6", "cucina_vegana:peanut_oil"})

    end -- if(cucina_vegana.farming_default


	for _, data in ipairs(extractor_recipes) do
		technic.register_extractor_recipe({input = {data[1]}, output = data[2]})
	end

    -- Support Alloy_Furnace
    local alloy_recipes = {
    {"farming:flour 3",                      "cucina_vegana:sunflower_seeds","cucina_vegana:sunflower_seeds_bread"},
    {"cucina_vegana:sunflower_seeds_flour 3","cucina_vegana:sunflower_seeds","cucina_vegana:sunflower_seeds_bread"},
    {"cucina_vegana:rice_flour 3",           "cucina_vegana:sunflower_seeds","cucina_vegana:sunflower_seeds_bread"},
    }

    for _, data in pairs(alloy_recipes) do
        technic.register_alloy_recipe({input = {data[1], data[2]}, output = data[3], time = data[4]})
    end

    -- Support Grinder
    local grinder_recipes = {
        -- Other
        {"cucina_vegana:sunflower_seeds 3",             "cucina_vegana:sunflower_seeds_flour"},
        {"cucina_vegana:rice 3",                        "cucina_vegana:rice_flour"},
    }

    for _, data in pairs(grinder_recipes) do
        technic.register_grinder_recipe({input = {data[1]}, output = data[2]})

    end

end -- if(minetest.get_modpath("technic"

--   *******************************************
--   *****           Hunger-Support        *****
--   *******************************************

if(minetest.get_modpath("hunger")) then
    for key, item in pairs(cv_items) do
        hunger.register_food(item)

    end -- for key, data

end -- hunger

--   **********************************************
--   *****           Hunger_ng-Support        *****
--   **********************************************

if(minetest.get_modpath("hunger_ng")) then
    local add = hunger_ng.add_hunger_data

    for key, item in pairs(cv_items) do
        add(item[1], {satiates = item[2], returns = item[3], heals = math.floor((item[5] or 0)), timeout = 0})

    end -- for key, data

end -- hunger_ng


--   *******************************************
--   *****           Wine-Support          *****
--   *******************************************

if(minetest.get_modpath("wine")) then
    wine:add_item({ {"cucina_vegana:molasses", "wine:glass_rum"},
                    {"cucina_vegana:dandelion_honey", "wine:glass_mead"},
                    {"cucina_vegana:rice", "wine:glass_sake"}
                  })

end -- wine

--   *******************************************
--   *****           Diet-Support          *****
--   *******************************************

if(minetest.get_modpath("diet")) then

    local function overwrite(name, hunger_change, replace_with_item, poisen, heal)
        local tab = minetest.registered_items[name]
        if not tab then
            return
        end
        tab.on_use = diet.item_eat(hunger_change, replace_with_item, poisen, heal)
    end -- local function overwrite

    for key,item in pairs(cv_items) do
        overwrite(item[1], item[2], item[3], item[4], item[5])

    end -- for key,item

end -- if(minetest.get_modpath("diet

--   *******************************************
--   *****           Petz-Support          *****
--   *******************************************

if(minetest.get_modpath("petz")) then
    cucina_vegana.add_group("petz:bucket_milk", {food_milk = 1})
    cucina_vegana.add_group("petz:chicken_egg", {food = 2, food_egg = 1})
    cucina_vegana.add_group("petz:ducky_egg",{food = 2, food_egg = 1})

end

--   *******************************************
--   *****      Lemontree-Support          *****
--   *******************************************

if(minetest.get_modpath("lemontree")) then
    cucina_vegana.add_group("lemontree:lemon", {food_lemon = 1, food_fruit = 1})

end

--   *******************************************
--   *****      Clementinetree-Support          *****
--   *******************************************

if(minetest.get_modpath("clementinetree")) then
    cucina_vegana.add_group("clementinetree:clementine", {food_orange = 1, food_fruit = 1})

end

--   *******************************************
--   *****      Techage-Support          *****
--   *******************************************
if(minetest.get_modpath("techage") and techage.register_plant) then
	for name,ndef in pairs(minetest.registered_nodes) do
		if type(name) == "string" then
			local mod = string.split(name, ":")[1]
			if mod == "cucina_vegana" then
				if ndef.on_timer then -- probably a plant that still needs to grow
					techage.register_plant(name)
				end
			end
		end
    end
end
