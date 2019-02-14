local modname = minetest.get_current_modname()

if(minetest.registered_items["bees:bottle_honey"] ~= nil) then
    minetest.override_item("bees:bottle_honey", {
        groups = {food = 1, food_honey = 1},
    })
    print("[MOD] " .. modname .. " Group changed on \"bees:bottle_honey\".")
    minetest.log("info", "[MOD] " .. modname .. " Group changed on \"bees:bottle_honey\".")
    
end

if(minetest.registered_items["farming:bread"] ~= nil) then
    minetest.override_item("farming:bread", {
        groups = {food_bread = 1},
    })
    print("[MOD] " .. modname .. " Group changed on \"farming:bread\".")
    minetest.log("info", "[MOD] " .. modname .. " Group changed on \"farming:bread\".")
    
end

if(minetest.registered_items["farming:bread_slice"] ~= nil) then
    minetest.override_item("farming:bread_slice", {
        groups = {food_bread = 1},
    })
    print("[MOD] " .. modname .. " Group changed on \"farming:bread_slice\".")
    minetest.log("info", "[MOD] " .. modname .. " Group changed on \"farming:bread_slice\".")
    
end

if(minetest.registered_items["farming:pumpkin_bread"] ~= nil) then
    minetest.override_item("farming:pumpkin_bread", {
        groups = {food_bread = 1},
    })
    print("[MOD] " .. modname .. " Group changed on \"farming:pumpkin_bread\".")
    minetest.log("info", "[MOD] " .. modname .. " Group changed on \"farming:pumpkin_bread\".")
end

if(minetest.registered_items["farming_food:corn_bread"] ~= nil) then
    minetest.override_item("farming_food:corn_bread", {
        groups = {food_bread = 1},
    })
    print("[MOD] " .. modname .. " Group changed on \"farming_food:corn_bread\".")
    minetest.log("info", "[MOD] " .. modname .. " Group changed on \"farming_food:corn_bread\".")

end

if(minetest.registered_items["farming:rice_bread"] ~= nil) then
    minetest.override_item("farming:bread", {
        groups = {food = 1, food_bread = 1},
    })
    print("[MOD] " .. modname .. " Group changed on \"farming:rice_bread\".")
    minetest.log("info", "[MOD] " .. modname .. " Group changed on \"farming:rice_bread\".")

end

if(minetest.registered_items["farming:rice"] ~= nil) then
    minetest.override_item("farming:rice", {
        groups = {food = 1, food_rice = 1},
    })
    print("[MOD] " .. modname .. " Group changed on \"farming:rice\".")
    minetest.log("info", "[MOD] " .. modname .. " Group changed on \"farming:rice\".")

end

if(minetest.registered_items["farming:rice_flour"] ~= nil) then
    minetest.override_item("farming:rice", {
        groups = {food = 1, food_flour = 1},
    })
    print("[MOD] " .. modname .. " Group changed on \"farming:rice_flour\".")
    minetest.log("info", "[MOD] " .. modname .. " Group changed on \"farming:rice_flour\".")

end

  
