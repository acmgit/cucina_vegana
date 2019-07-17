--   *******************************************
--   **       Support for 5.0                 **
--   *******************************************

local modname = minetest.get_current_modname()

local nodes = { { name = "default:sand_with_kelp",                                                 -- Name
            output = "cucina_vegana:vegan_sushi", 	                                            -- Output
            recipe = {	                                                                        -- Recipe
                        {"cucina_vegana:imitation_fish", "cucina_vegana:bowl_rice", ""},
                        {"default:sand_with_kelp", "", ""}
                    },
            repclaements = nil                                                                       -- Replacements
            -- replacements = {{"cucina_vegana:molasses", "vessels:drinking_glass"}}
            },
        }


for node, value in ipairs(nodes) do
    --print("[MT 5.x.x] Found " .. value.name .. " to register.")
    if(minetest.registered_nodes[value.name] or minetest.registered_items[value.name]) then
        minetest.register_craft({
                                    output = value.output,
                                    recipe = value.recipe,
                                    replacements = value.replacements
                                })

        minetest.log("info", "[MOD] " .. modname .. " Added a 5.x.x-Recipe with " .. value.name .. "\".")
        --print("[MT 5.x.x] " .. value.output .. " Recipe with " .. value.name .. " registered.")

    end -- if(minetest.registered_nodes

end -- for node

local berries = {
                    "default:blueberries",
                    "farming:blueberries",
                    "bushes:blueberry"
                }

local press = {
                    "default:stone",
                    "default:cobble",
                    "default:desert_stone",
                    "default:desert_cobble"
            }

for bkey,berry in ipairs(berries) do
    for mkey,mat in ipairs(press) do
        minetest.log("info", "[MOD] " .. modname .. " Registering Berry: " .. berry .. " with " .. mat .. ".")
        minetest.register_craft({
                            output = "cucina_vegana:blueberry_puree",
                            recipe = {
                                        {mat, berry, berry},
                                        {mat, berry, berry},
                                        {mat, berry, berry},
                                    },
                            replacements = {
                                                {mat, mat .. " 3"}
                                            }
        }) -- minetest.register_craft

    end -- for mkey, mat

end -- for bkey, berry
