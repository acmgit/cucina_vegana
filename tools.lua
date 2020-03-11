--[[
	**********************************************
	***   Helpfuntcions for cucina_vegana      ***
	**********************************************
]]--

function cucina_vegana.table_clone(c_table)
  local t2 = {}
  for k,v in pairs(c_table) do
    t2[k] = v

  end

  return t2

end -- function cucina_vegana.table_clone

function cucina_vegana.add_group(node, entry)

    local newgroup

    if(type(node) ~= "string") then return end

    -- Check the Item and get the group
    if(minetest.registered_items[node] ~= nil) then
        newgroup = cucina_vegana.table_clone(minetest.registered_items[node].groups)

    elseif(minetest.registered_tools[node] ~= nil) then
        newgroup = cucina_vegana.table_clone(minetest.registered_tools[node].groups)

    else -- Node not found.
        return

    end -- if(minetest.registered_nodes

    -- add the new groups to the item
    for key,value in pairs(entry) do
        newgroup[key] = value

    end

    minetest.override_item(node, {
                                  groups = newgroup
                                 })

end -- function cucina_vegana.add_group()

function cucina_vegana.register_farming_ng(pname, step)
    local germ = tonumber(cucina_vegana.plant_settings.germ_launch)
    local modname = cucina_vegana.modname

    if cucina_vegana.farming_default then
        if(germ > 0) then
            farmingNG.register_seed("cucina_vegana:seed_" .. pname, "cucina_vegana:" .. pname .. "_" .. germ)
            farmingNG.register_harvest("cucina_vegana:" .. pname .. "_" .. step)

        else
            farmingNG.register_seed("cucina_vegana:seed_" .. pname, "cucina_vegana:seed_" .. pname)
            farmingNG.register_harvest("cucina_vegana:" .. pname .. "_" .. step)

        end -- if(germ > 0

    else
        if(germ > 0) then
            farmingNG.register_seed("cucina_vegana:" .. pname .. "_seed", "cucina_vegana:" .. pname .. "_" .. germ)
            farmingNG.register_harvest("cucina_vegana:" .. pname .. "_" .. step)

        else
            farmingNG.register_seed("cucina_vegana:" .. pname .. "_seed", "cucina_vegana:" .. pname .. "_seed")
            farmingNG.register_harvest("cucina_vegana:" .. pname .. "_" .. step)

        end -- if(germ > 0

    end -- if cucina_vegana.farming_default

    print("info", "[MOD] " .. modname .. ": cucina_vegana:seed_" .. pname .. " at farming_nextgen registered.")
    minetest.log("info", "[MOD] " .. modname .. ": cucina_vegana:seed_" .. pname .. " at farming_nextgen registered.")

end -- cucina_vegana.register_farming_ng(
