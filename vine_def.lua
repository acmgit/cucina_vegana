--[[
	**********************************************
	***                 Vine                   ***
	**********************************************
]]--

local cv = cucina_vegana
local mt = minetest

-- Load support for intllib.
local S = cv.get_translator

local dname = S("Vine")
local pname = "vine"
local duration = cv.shrub_settings.vine_duration
local bottom_steps = 4
local top_steps = 3
local maxlight = cv.shrub_settings.vine_light
local percent = 3

-- Register for Mapgen
mt.register_node("cucina_vegana:wild_" .. pname, {
	description = S("Wild" ) .. " " .. dname .. " " .. S("Stem"),
	paramtype = "light",
	walkable = true,
	climbable = true,
	drop = {
			items = {
					{items = {"cucina_vegana:" .. pname .. "_sapling 1"}},
					{items = {"cucina_vegana:" .. pname .. "_grape 2"}},
				}
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	tiles = {"cucina_vegana_" .. pname .. "_bottom_1.png"},
	groups = {snappy = 3, dig_immediate=1, flammable=2, plant=1, attached_node = 1,
                growing = 1, not_in_creative_inventory = 1, tree},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
			},
	},
})

mt.register_node("cucina_vegana:" .. pname .. "_leaves", {
	description = dname .. " " .. S("Leaves"),
	paramtype = "light",
	walkable = true,
	drawtype = "allfaces_optional",
	waving = 1,
	paramtype2 = "facedir",
	sunlight_propagates = true,
	tiles = {"cucina_vegana_" .. pname .. "_leaves.png"},
	inventory_image = "cucina_vegana_" .. pname .. "_leaves.png",
	wield_image = "cucina_vegana_" .. pname .. "_leaves.png",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/3 chance
				items = {"cucina_vegana:" .. pname .. "_sapling"},
				rarity = 3,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {"cucina_vegana:" .. pname .. "_leaves"},
			}
		}
	},
	after_place_node = function(...)
							return default.after_place_leaves(...)
						end,
})

mt.register_craftitem("cucina_vegana:" .. pname .. "_grape", {
	description = S("Grape"),
	inventory_image = "cucina_vegana_" .. pname .. "_grape.png",
	groups = {food = 1, food_wine = 1},
    on_use = mt.item_eat(3)

})

mt.register_node("cucina_vegana:" .. pname .. "_sapling", {
	description = dname .. " " .. S("Sapling"),
	paramtype = "light",
	walkable = true,
	drawtype = "plantlike",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	climbable = true,
	tiles = {"cucina_vegana_" .. pname .. "_sapling.png"},
	inventory_image = "cucina_vegana_" .. pname .. "_sapling.png",
	wield_image = "cucina_vegana_" .. pname .. "_sapling.png",
	groups = {	snappy = 3, dig_immediate=1, flammable=2, plant=1, attached_node = 1,
                growing = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
		},
	},
})

cv.lib.register_bottom_abm("cucina_vegana:" .. pname .. "_sapling", "cucina_vegana:" .. pname .. "_bottom_1", duration, maxlight)

for step = 1, bottom_steps do
	mt.register_node("cucina_vegana:" .. pname .. "_bottom_" .. step, {
		description = dname,
		paramtype = "light",
		walkable = true,
		climbable = true,
		drop = {
			items = {
					{items = {"cucina_vegana:" .. pname .. "_sapling 1"}},
			},
		},
		drawtype = "plantlike",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		tiles = {"cucina_vegana_" .. pname .. "_bottom_" .. step .. ".png"},
		groups = {	snappy = 3, flammable=2, plant=1, attached_node = 1,
	                growing = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {
						{-0.4, -0.5, -0.4, 0.4, 0.5, 0.4}, -- side f
					},
		},
	})

	if (step < bottom_steps) then
		cv.lib.register_bottom_abm("cucina_vegana:" .. pname .. "_bottom_" .. step, "cucina_vegana:" .. pname .. "_bottom_" .. step+1, duration, maxlight)

	end

end -- for step

mt.register_abm({
    nodenames = {"cucina_vegana:" .. pname .. "_bottom_" .. bottom_steps},
    interval = duration,
    chance = percent,
    catch_up = true,
    action = function(pos, node, active_object_count, active_object_count_wider)
                local nodepos = { x = pos.x, y = pos.y+1, z = pos.z}
	                if(cv.lib.check_light(nodepos, maxlight)) then
                        if(cv.lib.check_air(nodepos)) then
                            mt.set_node(nodepos, {name = "cucina_vegana:" .. pname .. "_top_1"})

                        end -- if(check_air)

                    end -- if(cv.check_light

            end, -- function(

}) -- minetest.register_abm({

for step = 1, top_steps do
	mt.register_node("cucina_vegana:" .. pname .. "_top_" .. step, {
		description = dname,
		paramtype = "light",
		walkable = false,
		drop = {
			items = {
						{items = {"cucina_vegana:" .. pname .. "_leaves 2"}},
						{items = {"cucina_vegana:" .. pname .. "_grape " .. step}, rarity = top_steps-step},
						{items = {"cucina_vegana:" .. pname .. "_sapling"}, rarity = 5},
					},
				},
		drawtype = "plantlike",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		tiles = {"cucina_vegana_" .. pname .. "_top_" .. step .. ".png"},
		groups = {	snappy = 3, dig_immediate=1, flammable=2, plant=1, attached_node = 1,
	                growing = 1, not_in_creative_inventory = 1, tree = 1},
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {
						{-0.4, -0.5, -0.4, 0.4, 0.5, 0.4}, -- side f
					},
		},
	})

	if (step < top_steps) then
		cv.lib.register_top_abm("cucina_vegana:" .. pname .. "_top_" .. step, "cucina_vegana:" .. pname .. "_top_" .. step+1, duration, maxlight)

	end

end -- for step

-- Register @ farming_nextgen
if cucina_vegana.farming_ng then
    cucina_vegana.register_farming_ng(pname, top_steps)

end -- if(cucina_vegana.farming_ng
