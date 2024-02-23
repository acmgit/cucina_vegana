-- Scalevalues are:
-- Lower value  = easy to find (like 0.002)
-- Higher value = hard to find (like 0.0005)

-- Plantname
-- plant is on (true) or off (true)
-- scalevalue
-- minlight-settings

local cv_setting_plant = "cucina_vegana.plant_settings."
local cv_setting_shrub = "cucina_vegana.shrub_settings."
local cv_setting = "cucina_vegana.settings."

--  ********************************************************
--  ***               general settings                   ***
--  ********************************************************

cucina_vegana.settings.coffee_effect_duration = minetest.settings:get(cv_setting .. "coffee_effect_duration") or 10
cucina_vegana.settings.coffee_effect_speed = minetest.settings:get(cv_setting .. "coffee_effect_speed") or 3
cucina_vegana.plant_settings.germ_launch = minetest.settings:get(cv_setting_plant .. "germ_launch") or 0 -- Start germ at:


--  ********************************************************
--  ***                    plants                        ***
--  ********************************************************

-- Asparagus
cucina_vegana.plant_settings.asparagus = minetest.settings:get_bool(cv_setting_plant .. "asparagus", true)
cucina_vegana.plant_settings.asparagus_scale = minetest.settings:get(cv_setting_plant .."asparagus_scale") or 0.0007
cucina_vegana.plant_settings.asparagus_light = minetest.settings:get(cv_setting_plant .."asparagus_light") or 11

-- Banana
cucina_vegana.plant_settings.banana = minetest.settings:get_bool(cv_setting_plant .. "banana", true)
cucina_vegana.plant_settings.banana_scale = minetest.settings:get(cv_setting_plant .."banana_scale") or 0.009
cucina_vegana.plant_settings.banana_light = minetest.settings:get(cv_setting_plant .."banana") or 12

-- Carrot
cucina_vegana.plant_settings.carrot = minetest.settings:get_bool(cv_setting_plant .."carrot", true)
cucina_vegana.plant_settings.carrot_scale = minetest.settings:get(cv_setting_plant .."carrot_scale") or 0.0005
cucina_vegana.plant_settings.carrot_light = minetest.settings:get(cv_setting_plant .."carrot_light") or 11

-- Chili
cucina_vegana.plant_settings.chili = minetest.settings:get_bool(cv_setting_plant .."chili", true)
cucina_vegana.plant_settings.chili_scale = minetest.settings:get(cv_setting_plant .."chili_scale") or 0.0002
cucina_vegana.plant_settings.chili_light = minetest.settings:get(cv_setting_plant .."chili_light") or 13

-- Chives
cucina_vegana.plant_settings.chives = minetest.settings:get_bool(cv_setting_plant .."chives", true)
cucina_vegana.plant_settings.chives_scale = minetest.settings:get(cv_setting_plant .."chives_scale") or 0.0005
cucina_vegana.plant_settings.chives_light = minetest.settings:get(cv_setting_plant .."chives_light") or 10

-- Corn
cucina_vegana.plant_settings.corn = minetest.settings:get_bool(cv_setting_plant .."corn", true)
cucina_vegana.plant_settings.corn_scale = minetest.settings:get(cv_setting_plant .."corn_scale") or 0.0004
cucina_vegana.plant_settings.corn_light = minetest.settings:get(cv_setting_plant .."corn_light") or 13

-- Flax
cucina_vegana.plant_settings.flax = minetest.settings:get_bool(cv_setting_plant .."flax", true)
cucina_vegana.plant_settings.flax_scale = minetest.settings:get(cv_setting_plant .."flax_scale") or 0.0006
cucina_vegana.plant_settings.flax_light = minetest.settings:get(cv_setting_plant .."flax_light") or 10

-- Kohlrabi
cucina_vegana.plant_settings.kohlrabi = minetest.settings:get_bool(cv_setting_plant .."kohlrabi", true)
cucina_vegana.plant_settings.kohlrabi_scale = minetest.settings:get(cv_setting_plant .."kohlrabi_scale") or 0.0007
cucina_vegana.plant_settings.kohlrabi_light = minetest.settings:get(cv_setting_plant .."kohlrabi_light") or 13

-- Lettuce
cucina_vegana.plant_settings.lettuce = minetest.settings:get_bool(cv_setting_plant .."lettuce", true)
cucina_vegana.plant_settings.lettuce_scale = minetest.settings:get(cv_setting_plant .."lettuce_scale") or 0.0008
cucina_vegana.plant_settings.lettuce_light = minetest.settings:get(cv_setting_plant .."lettuce_light") or 12

-- Parsley
cucina_vegana.plant_settings.parsley = minetest.settings:get_bool(cv_setting_plant .."parsley", true)
cucina_vegana.plant_settings.parsley_scale = minetest.settings:get(cv_setting_plant .."parsley_scale") or 0.0005
cucina_vegana.plant_settings.parsley_light = minetest.settings:get(cv_setting_plant .."parsley_light") or 11

-- Peanut
cucina_vegana.plant_settings.peanut = minetest.settings:get_bool(cv_setting_plant .."peanut", true)
cucina_vegana.plant_settings.peanut_scale = minetest.settings:get(cv_setting_plant .."peanut_scale") or 0.0006
cucina_vegana.plant_settings.peanut_light = minetest.settings:get(cv_setting_plant .."peanut_light") or 12

-- Rice
cucina_vegana.plant_settings.rice = minetest.settings:get_bool(cv_setting_plant .."rice", true)
cucina_vegana.plant_settings.rice_scale = minetest.settings:get(cv_setting_plant .."rice_scale") or 0.0005
cucina_vegana.plant_settings.rice_light = minetest.settings:get(cv_setting_plant .."rice_light") or 12

-- Rosemary
cucina_vegana.plant_settings.rosemary = minetest.settings:get_bool(cv_setting_plant .."rosemary", true)
cucina_vegana.plant_settings.rosemary_scale = minetest.settings:get(cv_setting_plant .."rosemary") or 0.0008
cucina_vegana.plant_settings.rosemary_light = minetest.settings:get(cv_setting_plant .."rosemary") or 12

-- Soy
cucina_vegana.plant_settings.soy = minetest.settings:get_bool(cv_setting_plant .."soy", true)
cucina_vegana.plant_settings.soy_scale = minetest.settings:get(cv_setting_plant .."soy") or 0.0007
cucina_vegana.plant_settings.soy_light = minetest.settings:get(cv_setting_plant .."soy") or 12

-- Sunflowers
cucina_vegana.plant_settings.sunflower = minetest.settings:get_bool(cv_setting_plant .."sunflower", true)
cucina_vegana.plant_settings.sunflower_scale = minetest.settings:get(cv_setting_plant .."sunflower") or 0.0007
cucina_vegana.plant_settings.sunflower_light = minetest.settings:get(cv_setting_plant .."sunflower") or 13

-- Tomato
cucina_vegana.plant_settings.tomato = minetest.settings:get_bool(cv_setting_plant .."tomato", true)
cucina_vegana.plant_settings.tomato_scale = minetest.settings:get(cv_setting_plant .."tomato_scale") or 0.0006
cucina_vegana.plant_settings.tomato_light = minetest.settings:get(cv_setting_plant .."tomato_light") or 11

-- Potato
cucina_vegana.plant_settings.potato = minetest.settings:get_bool(cv_setting_plant .."potato", true)
cucina_vegana.plant_settings.potato_scale = minetest.settings:get(cv_setting_plant .."potato_scale") or 0.0005
cucina_vegana.plant_settings.potato_light = minetest.settings:get(cv_setting_plant .."potato_light") or 11

-- Garlic
cucina_vegana.plant_settings.garlic = minetest.settings:get_bool(cv_setting_plant .."garlic", true)
cucina_vegana.plant_settings.garlic_scale = minetest.settings:get(cv_setting_plant .."garlic_scale") or 0.0006
cucina_vegana.plant_settings.garlic_light = minetest.settings:get(cv_setting_plant .."garlic_light") or 12

-- Onion
cucina_vegana.plant_settings.onion = minetest.settings:get_bool(cv_setting_plant .."onion", true)
cucina_vegana.plant_settings.onion_scale = minetest.settings:get(cv_setting_plant .."onion_scale") or 0.0006
cucina_vegana.plant_settings.onion_light = minetest.settings:get(cv_setting_plant .."onion_light") or 12

-- Cucumber
cucina_vegana.plant_settings.cucumber = minetest.settings:get_bool(cv_setting_plant .."cucumber", true)
cucina_vegana.plant_settings.cucumber_scale = minetest.settings:get(cv_setting_plant .."cucumber_scale") or 0.0004
cucina_vegana.plant_settings.cucumber_light = minetest.settings:get(cv_setting_plant .."cucumber_light") or 12

-- Strawberry
cucina_vegana.plant_settings.strawberry = minetest.settings:get_bool(cv_setting_plant .. "strawberry", true)
cucina_vegana.plant_settings.strawberry_scale = minetest.settings:get(cv_setting_plant .."strawberry_scale") or 0.006
cucina_vegana.plant_settings.strawberry_light = minetest.settings:get(cv_setting_plant .."strawberry_light") or 10

--  ********************************************************
--  ***                    shrubs                        ***
--  ********************************************************

-- Vine
cucina_vegana.shrub_settings.vine = minetest.settings:get_bool(cv_setting_shrub .. "vine", true)
cucina_vegana.shrub_settings.vine_scale = minetest.settings:get(cv_setting_shrub .. "vine_scale") or 0.008
cucina_vegana.shrub_settings.vine_light = minetest.settings:get(cv_setting_shrub .. "vine_light") or 12
cucina_vegana.shrub_settings.vine_duration = minetest.settings:get(cv_setting_shrub .. "vine_duration") or 120

-- Coffee
cucina_vegana.shrub_settings.coffee = minetest.settings:get_bool(cv_setting_shrub .. "coffee", true)
cucina_vegana.shrub_settings.coffee_scale = minetest.settings:get(cv_setting_shrub .. "coffee_scale") or 0.005
cucina_vegana.shrub_settings.coffee_light = minetest.settings:get(cv_setting_shrub .. "coffee_light") or 11
cucina_vegana.shrub_settings.coffee_duration = minetest.settings:get(cv_setting_shrub .. "coffee_duration") or 180

