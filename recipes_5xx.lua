--   *******************************************
--   **       Support for 5.0                 **
--   *******************************************

local modname = core.get_current_modname()

local nodes = {
    {
        name = "default:sand_with_kelp",
        output = "cucina_vegana:vegan_sushi",
        recipe = {
            {"cucina_vegana:imitation_fish", "cucina_vegana:bowl_rice", ""},
            {"default:sand_with_kelp", "", ""}
        },
            -- repclaements = nil
            -- replacements = {{"cucina_vegana:molasses", "vessels:drinking_glass"}}
    },
    {
        name = "flowers:waterlily",
        output = "cucina_vegana:sea_salad",
        recipe = {
            {"flowers:waterlily", "cucina_vegana:parsley", "cucina_vegana:lettuce"},
            {"cucina_vegana:chives", "bucket:bucket_water", "cucina_vegana:asparagus"},
            {"", "cucina_vegana:bowl", ""},
        },
        replacements = {
            {"bucket:bucket_water", "bucket:bucket_empty"},
        },
    },

    -- repclaements = nil
    -- replacements = {{"cucina_vegana:molasses", "vessels:drinking_glass"}}
}

for node, value in ipairs(nodes) do
    if core.registered_nodes[value.name] or core.registered_items[value.name] then
        core.register_craft({
            output = value.output,
            recipe = value.recipe,
            replacements = value.replacements
        })

        core.log("info", "[MOD] " .. modname .. " Added a 5.x.x-Recipe with " .. value.name .. "\".")
    end
end

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

for bkey, berry in ipairs(berries) do
    for mkey, mat in ipairs(press) do
        core.log("info", "[MOD] " .. modname .. " Registering Berry: " .. berry .. " with " .. mat .. ".")
        core.register_craft({
            output = "cucina_vegana:blueberry_puree",
            recipe = {
                {mat, berry, berry},
                {mat, berry, berry},
                {mat, berry, berry},
            },
            replacements = {
                {mat, mat .. " 3"}
            }
        })
    end
end
