
if  minetest.registered_items["farming:bread"] ~= nil then
    minetest.override_item("farming:bread", {
        groups = {food_bread=1},
    })
end

if  minetest.registered_items["farming:bread_slice"] ~= nil then
    minetest.override_item("farming:bread_slice", {
        groups = {food_bread=1},
    })
end

if  minetest.registered_items["farming:pumpkin_bread"] ~= nil then
    minetest.override_item("farming:pumpkin_bread", {
        groups = {food_bread=1},
    })
end

if  minetest.registered_items["farming_food:corn_bread"] ~= nil then
    minetest.override_item("farming_food:corn_bread", {
        groups = {food_bread=1},
    })

end

if minetest.registered_items["bees:bottle_honey"] ~= nil then
    minetest.override_item("bees:bottle_honey", {
        groups = {food=1, food_honey=1},
    })
    
end

