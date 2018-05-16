
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
