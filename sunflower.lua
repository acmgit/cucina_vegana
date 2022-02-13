local modpath = minetest.get_modpath(minetest.get_current_modname())

if(minetest.registered_nodes["flowers:sunflower"]  ~= nil) then
	print("[MOD] " .. minetest.get_current_modname() .. " Sunflowers available.")
	print("[MOD] " .. minetest.get_current_modname() .. " using \"flowers:sunflower\".")

else

	print("[MOD] " .. minetest.get_current_modname() .. " no Sunflowers available.")
	print("[MOD] " .. minetest.get_current_modname() .. " use own Sunflowers.")


	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass", "default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = cucina_vegana.plant_settings.sunflower_scale,
			spread = {x = 10, y = 10, z = 10},
			seed = 8756,
			octaves = 3,
			persist = 0.6
		},
		y_min = 0,
		y_max = 150,
		decoration = "cucina_vegana:wild_sunflower",
		})

	minetest.register_alias("flowers:sunflower", "cucina_vegana:sunflower")

	if (cucina_vegana.farming_default) then

		dofile(modpath .. "/sunflower_default.lua")

	else

		dofile(modpath .. "/sunflower_redo.lua")

	end

end
