local modname = core.get_current_modname()

if core.registered_items["bees:bottle_honey"] ~= nil then
    cucina_vegana.add_group("bees:bottle_honey", {food = 1, food_honey = 1})
    core.log("info", "[MOD] " .. modname .. " Group changed on \"bees:bottle_honey\".")
end

if core.registered_items["farming:bread"] ~= nil then
    cucina_vegana.add_group("farming:bread", {food_bread = 1})
    core.log("info", "[MOD] " .. modname .. " Group changed on \"farming:bread\".")
end

if core.registered_items["farming:bread_slice"] ~= nil then
    cucina_vegana.add_group("farming:bread_slice", {food_bread = 1})
    core.log("info", "[MOD] " .. modname .. " Group changed on \"farming:bread_slice\".")
end

if core.registered_items["farming:pumpkin_bread"] ~= nil then
    cucina_vegana.add_group("farming:pumpkin_bread", {food_bread = 1})
    core.log("info", "[MOD] " .. modname .. " Group changed on \"farming:pumpkin_bread\".")
end

if core.registered_items["farming_food:corn_bread"] ~= nil then
    cucina_vegana.add_group("farming_food:corn_bread", {food_bread = 1})
    core.log("info", "[MOD] " .. modname .. " Group changed on \"farming_food:corn_bread\".")
end

if core.registered_items["farming:rice_bread"] ~= nil then
    cucina_vegana.add_group("farming:rice_bread", {food = 1, food_bread = 1})
    core.log("info", "[MOD] " .. modname .. " Group changed on \"farming:rice_bread\".")
end

if core.registered_items["farming:rice"] ~= nil then
    cucina_vegana.add_group("farming:rice", {food = 1, food_rice = 1})
    core.log("info", "[MOD] " .. modname .. " Group changed on \"farming:rice\".")
end

if core.registered_items["farming:rice_flour"] ~= nil then
    cucina_vegana.add_group("farming:rice_flour", {food = 1, food_flour = 1})
    core.log("info", "[MOD] " .. modname .. " Group changed on \"farming:rice_flour\".")
end
