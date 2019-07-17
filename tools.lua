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
