--[[
	**********************************************
	***           Sunflower redo               ***
	**********************************************
]]--

-- Load support for intllib.
local S = cucina_vegana.get_translator

local dname = S("Sunflower")
local pname = "sunflower"
local step = 5
local modname = minetest.get_current_modname()
local germ = tonumber(cucina_vegana.plant_settings.germ_launch)

if germ == 0 then
    germ = "_seed"

else
    germ = "_" .. germ

end

if(minetest.registered_nodes["flowers:sunflower"]  ~= nil) then
	print("[MOD] " .. modname .. " Sunflowers available.")
	print("[MOD] " .. modname .. " using \"flowers:sunflower\".")
    minetest.log("info", "[MOD] " .. modname .. ": Sunflowers available. Using \"flowers:sunflower\".")

else

	minetest.register_node("cucina_vegana:" .. pname .. "_seed", {
		description = dname .. " " .. S("Seed"),
		tiles = {"cucina_vegana_" .. pname .. "_seed.png"},
		inventory_image = "cucina_vegana_" .. pname .. "_seed.png",
		wield_image = "cucina_vegana_" .. pname .. "_seed.png",
		drawtype = "signlike",
		minlight = cucina_vegana.plant_settings.sunflower_light,
        groups = {seed = 1, snappy = 3, attached_node = 1, dig_immediate=1, flammable = 4},
		paramtype = "light",
		paramtype2 = "wallmounted",
		walkable = false,
		sunlight_propagates = true,
		selection_box = farming.select,
		on_place = function(itemstack, placer, pointed_thing)
			return farming.place_seed(itemstack, placer, pointed_thing, "cucina_vegana:" .. pname .. germ)
		end,
	})

	-- sunflower definition
	local crop_def = {
		drawtype = "plantlike",
		tiles = {"cucina_vegana_" .. pname .. "_1.png"},
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
        waving = 1,
		buildable_to = true,
		drop =  "",
		minlight = 13,
		selection_box = farming.select,
		groups = {
			flammable = 4, snappy=3, dig_immediate=1, plant = 1, attached_node = 1,
			not_in_creative_inventory = 1, growing = 1
		},
		sounds = default.node_sound_leaves_defaults()
	}

	-- stage 1
	minetest.register_node("cucina_vegana:" .. pname .. "_1", table.copy(crop_def))

	-- stage 2
	crop_def.tiles = {"cucina_vegana_" .. pname .. "_2.png"}
	minetest.register_node("cucina_vegana:" .. pname .. "_2", table.copy(crop_def))

	-- stage 3
	crop_def.tiles = {"cucina_vegana_" .. pname .. "_3.png"}
	minetest.register_node("cucina_vegana:" .. pname .. "_3", table.copy(crop_def))

	-- stage 4
	crop_def.tiles = {"cucina_vegana_" .. pname .. "_4.png"}
	crop_def.drop = {
		items = {
			{items = {"cucina_vegana:" .. pname .. "_seed"}, rarity = 2},
		}
	}
	minetest.register_node("cucina_vegana:" .. pname .. "_4", table.copy(crop_def))

	-- stage 5
	crop_def.tiles = {"cucina_vegana_" .. pname .. "_5.png"}
	crop_def.drop = {
		items = {
			{items = {"cucina_vegana:" .. pname .. "_seed"}, rarity = 1},
			{items = {"cucina_vegana:" .. pname .. "_seed"}, rarity = 2},
			{items = {"cucina_vegana:" .. pname .. ""}, rarity = 1},
			{items = {"cucina_vegana:" .. pname .. ""}, rarity = 2}
		}
	}
	minetest.register_node("cucina_vegana:" .. pname .. "_5", table.copy(crop_def))

	-- Register for Mapgen
	minetest.register_node("cucina_vegana:wild_" .. pname, {
		description = S("Wild ") .. dname,
		paramtype = "light",
		walkable = false,
		drop = {
				items = {
						{items = {"cucina_vegana:" .. pname .. "_seed"}},
						{items = {"cucina_vegana:" .. pname .. ""}},
					}
				},
		drawtype = "plantlike",
		paramtype2 = "facedir",
		tiles = {"cucina_vegana_" .. pname .. "_5.png"},
		groups = {snappy=3, dig_immediate=1, flammable=2, plant=1, attached_node = 1},
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
				},
		},
	})

end

if(cucina_vegana.plant_settings.bonemeal) then
    table.insert(cucina_vegana.plant_settings.bonemeal_list,
                 {"cucina_vegana:" .. pname .. "_", step, "cucina_vegana:" .. pname .. "_seed"})

end -- if(cucina_vegana.plant_settings.bonemeal

-- Register @ farming_nextgen
if cucina_vegana.farming_ng then
    cucina_vegana.register_farming_ng(pname, step)

end -- if(cucina_vegana.farming_ng

-- Register @ Signs_bot
if(cucina_vegana.signs_bot) then
    
    local fs = signs_bot.register_farming_seed
    local fc = signs_bot.register_farming_crop
	fs("cucina_vegana:"..pname .. "_seed",  "cucina_vegana:" .. pname .. "_1")
	fc("cucina_vegana:".. pname .. "_" .. step,     "cucina_vegana:" .. pname,         "cucina_vegana:" .. pname .. "_seed")
    
end
