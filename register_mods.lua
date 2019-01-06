--   *******************************************
--   *****           Technic-Support       ***** 
--   *******************************************

if(minetest.get_modpath("technic")) then


	-- Support Compressor
	local compressor_recipes = {
					{"cucina_vegana:sunflower_seeds 6", "cucina_vegana:sunflower_seeds_oil"},
					{"cucina_vegana:lettuce_seed 6", "cucina_vegana:lettuce_oil"},
                    {"cucina_vegana:kohlrabi 6", "cucina_vegana:molasses"},
                    {"cucina_vegana:soy 8", "cucina_vegana:tofu"},
				}

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
        {"cucina_vegana:sunflower", "cucina_vegana:sunflower_seeds 4"},
        {"cucina_vegana:kohlrabi 3", "cucina_vegana:molasses"},
        {"cucina_vegana:molasses", "bushes:sugar 2"},
        {"cucina_vegana:soy 4", "cucina_vegana:soy_milk"},
	}

	for _, data in ipairs(extractor_recipes) do
		technic.register_extractor_recipe({input = {data[1]}, output = data[2]})
	end
	
    -- Support Alloy_Furnace
    local alloy_recipes = {
        {"farming:flour 3",                         "cucina_vegana:sunflower_seeds",        "cucina_vegana:sunflower_seeds_bread"},
        {"cucina_vegana:sunflower_seeds_flour 3",   "cucina_vegana:sunflower_seeds",        "cucina_vegana:sunflower_seeds_bread"},
        {"cucina_vegana:rice_flour 3",              "cucina_vegana:sunflower_seeds",        "cucina_vegana:sunflower_seeds_bread"},
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

if(hunger ~= nil) then
    
    --                    Name                      Saturation      Replace with    Poison  Heal    Sound
    -- crops
    hunger.register_food('cucina_vegana:soy',       1.5,            nil,            nil,    nil,    nil) 
    hunger.register_food('cucina_vegana:parsley',   1.0,            nil,            nil,    nil,    nil)
    hunger.register_food('cucina_vegana:lettuce',   1.5,            nil,            nil,    nil,    nil)
    hunger.register_food('cucina_vegana:chives',    1.0,            nil,            nil,    nil,    nil)
    hunger.register_food('cucina_vegana:rosemary',  1.0,            nil,            nil,    nil,    nil)
    hunger.register_food('cucina_vegana:kohlrabi',  1.5,            nil,            nil,    nil,    nil)
    hunger.register_food('cucina_vegana:asparagus', 1.5,            nil,            nil,    nil,    nil)
    
    -- side dishes
    
    --                    Name                                          Saturation  Replace with            Poison  Heal    Sound
    -- dinners
    hunger.register_food('cucina_vegana:asparagus_hollandaise_cooked',  6,          'cucina_vegana:plate',      nil,    1.5,    nil)
    hunger.register_food('cucina_vegana:asparagus_rice_cooked',         6,          'cucina_vegana:plate',      nil,    1.5,    nil)
    hunger.register_food('cucina_vegana:asparagus_soup_cooked',         4,          'cucina_vegana:plate',      nil,    0.5,    nil)
    hunger.register_food('cucina_vegana:bowl_rice_cooked',              5,          'cucina_vegana:bowl',       nil,    nil,    nil)
    hunger.register_food('cucina_vegana:dandelion_honey',               3,          'vessels:glass_bottle',     nil,    nil,    nil)
    hunger.register_food('cucina_vegana:fish_parsley_rosemary_cooked',  6,          'cucina_vegana:plate',      nil,    1.5,    nil)
    hunger.register_food('cucina_vegana:kohlrabi_roasted',              4,          nil,                        nil,    nil,    nil)
    hunger.register_food('cucina_vegana:kohlrabi_soup_cooked',          5,          'cucina_vegana:plate',      nil,    1.5,    nil)
    hunger.register_food('cucina_vegana:salad_bowl',                    4,          'cucina_vegana:salad_bowl', nil,    nil,    nil)
    hunger.register_food('cucina_vegana:salad_hollandaise',             4,          'cucina_vegana:salad_bowl', nil,    nil,    nil) 
    hunger.register_food('cucina_vegana:sauce_hollandaise',             2,          'vessels:glass_bottle',     nil,    nil,    nil) 
    hunger.register_food('cucina_vegana:soy_milk',                      3,          'vessels:drinking_glass',   nil,    0.5,    nil) 
    hunger.register_food('cucina_vegana:soy_soup_cooked',               4,          'cucina_vegana:plate',      nil,    0.5,    nil) 
    hunger.register_food('cucina_vegana:sunflower_seeds_bread',         5,          nil,                        nil,    0.5,    nil) 
    hunger.register_food('cucina_vegana:sunflower_seeds_roasted',       3,          nil,                        nil,    nil,    nil) 
    hunger.register_food('cucina_vegana:tofu_chives_rosemary_cooked',   4,          'cucina_vegana:plate',      nil,    2.0,    nil)  
    hunger.register_food('cucina_vegana:tofu_cooked',                   4,          nil,                        nil,    nil,    nil) 
    hunger.register_food('cucina_vegana:vegan_sushi',                   5,          nil,                        nil,    1.5,    nil) 
    
end -- hunger
 
