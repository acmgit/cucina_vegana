-- Scalevalues are:
-- Lower value  = easy to find (like 0.002)
-- Higher value = hard to find (like 0.0005)

-- Plantname
-- plant is on (true) or off (true)
-- scalevalue
-- minlight-settings

local cv_setting = "cucina_vegana.plant_settings."

-- Start germ at:
cucina_vegana.plant_settings.germ_launch = minetest.settings:get(cv_setting .. "germ_launch") or 0

-- Asparagus
cucina_vegana.plant_settings.asparagus = minetest.settings:get_bool(cv_setting .. "asparagus", true)
cucina_vegana.plant_settings.asparagus_scale = minetest.settings:get(cv_setting .."asparagus_scale") or 0.0007
cucina_vegana.plant_settings.asparagus_light = minetest.settings:get(cv_setting .."asparagus_light") or 11

-- Chives
cucina_vegana.plant_settings.chives = minetest.settings:get_bool(cv_setting .."chives", true)
cucina_vegana.plant_settings.chives_scale = minetest.settings:get(cv_setting .."chives_scale") or 0.0005
cucina_vegana.plant_settings.chives_light = minetest.settings:get(cv_setting .."chives_light") or 10

-- Flax
cucina_vegana.plant_settings.flax = minetest.settings:get_bool(cv_setting .."flax", true)
cucina_vegana.plant_settings.flax_scale = minetest.settings:get(cv_setting .."flax_scale") or 0.0006
cucina_vegana.plant_settings.flax_light = minetest.settings:get(cv_setting .."flax_light") or 10

-- Kohlrabi
cucina_vegana.plant_settings.kohlrabi = minetest.settings:get_bool(cv_setting .."kohlrabi", true)
cucina_vegana.plant_settings.kohlrabi_scale = minetest.settings:get(cv_setting .."kohlrabi_scale") or 0.0007
cucina_vegana.plant_settings.kohlrabi_light = minetest.settings:get(cv_setting .."kohlrabi_light") or 13

-- Lettuce
cucina_vegana.plant_settings.lettuce = minetest.settings:get_bool(cv_setting .."lettuce", true)
cucina_vegana.plant_settings.lettuce_scale = minetest.settings:get(cv_setting .."lettuce_scale") or 0.0008
cucina_vegana.plant_settings.lettuce_light = minetest.settings:get(cv_setting .."lettuce_light") or 12

-- Parsley
cucina_vegana.plant_settings.parsley = minetest.settings:get_bool(cv_setting .."parsley", true)
cucina_vegana.plant_settings.parsley_scale = minetest.settings:get(cv_setting .."parsley_scale") or 0.0005
cucina_vegana.plant_settings.parsley_light = minetest.settings:get(cv_setting .."parsley_light") or 11

-- Peanut
cucina_vegana.plant_settings.peanut = minetest.settings:get_bool(cv_setting .."peanut", true)
cucina_vegana.plant_settings.peanut_scale = minetest.settings:get(cv_setting .."peanut_scale") or 0.0006
cucina_vegana.plant_settings.peanut_light = minetest.settings:get(cv_setting .."peanut_light") or 12

-- Rice
cucina_vegana.plant_settings.rice = minetest.settings:get_bool(cv_setting .."rice", true)
cucina_vegana.plant_settings.rice_scale = minetest.settings:get(cv_setting .."rice_scale") or 0.0005
cucina_vegana.plant_settings.rice_light = minetest.settings:get(cv_setting .."rice_light") or 12

-- Rosemary
cucina_vegana.plant_settings.rosemary = minetest.settings:get_bool(cv_setting .."rosemary", true)
cucina_vegana.plant_settings.rosemary_scale = minetest.settings:get(cv_setting .."rosemary") or 0.0008
cucina_vegana.plant_settings.rosemary_light = minetest.settings:get(cv_setting .."rosemary") or 12

-- Soy
cucina_vegana.plant_settings.soy = minetest.settings:get_bool(cv_setting .."soy", true)
cucina_vegana.plant_settings.soy_scale = minetest.settings:get(cv_setting .."soy") or 0.0007
cucina_vegana.plant_settings.soy_light = minetest.settings:get(cv_setting .."soy") or 12

-- Sunflowers
cucina_vegana.plant_settings.sunflower = minetest.settings:get_bool(cv_setting .."sunflower", true)
cucina_vegana.plant_settings.sunflower_scale = minetest.settings:get(cv_setting .."sunflower") or 0.0007
cucina_vegana.plant_settings.sunflower_light = minetest.settings:get(cv_setting .."sunflower") or 13
