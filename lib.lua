--[[
	**********************************************
    ***             cucina_vegana              ***
    ***               lib.lua                  ***
	**********************************************
]]--

local cv = cucina_vegana
local mt = minetest

function cv.lib.register_bottom_abm(node, nextnode, duration, light)
    local percent = 1

    if(mt.registered_nodes[node]) then
        mt.register_abm({
            nodenames = {node},
            interval = duration,
            chance = percent,
            catch_up = true,
            action = function(pos, node, active_object_count, active_object_count_wider)
                        local nodepos = pos
                        if(cv.lib.check_soil(nodepos)) then
                            if(cv.lib.check_light(nodepos, light)) then
                                mt.set_node(nodepos, {name = nextnode})

                            end -- if(cv.check_light

                        end -- if(cv.lib.check_soil)

                    end, -- function(

        }) -- minetest.register_abm({

    end -- if(nodename ~= nil

end

function cv.lib.register_top_abm(node, nextnode, duration, light)
    local percent = 1

    if(mt.registered_nodes[node]) then
        mt.register_abm({
            nodenames = {node},
            interval = duration,
            chance = percent,
            catch_up = true,
            action = function(pos, node, active_object_count, active_object_count_wider)
                        local nodepos = pos
                            if(cv.lib.check_light(nodepos, light)) then
                                mt.set_node(nodepos, {name = nextnode})

                            end -- if(cv.check_light

                    end, -- function(

        }) -- minetest.register_abm({

    end -- if(nodename ~= nil

end

function cv.lib.check_light(pos, level)
    local node = mt.get_node_or_nil(pos)

    if(node) then
        local light = mt.get_node_light(pos) or 0
        if(light >= level) then return true end

    end -- if(minetest.get_node_or_nil(

    return false

end -- function aqua_farming.check_light

function cv.lib.check_soil(pos)
    local below = {x = pos.x, y = pos.y - 1, z = pos.z}
    local soil = mt.get_node_or_nil(below)

    if(soil and mt.get_item_group(soil, "group:soil")) then
        return true

    end -- if(minetest.get_node_or_nil(

    return false

end -- cv.lib.check_soil

function cv.lib.check_air(pos)
    local air = mt.get_node_or_nil(pos)
    if (air) and (string.match(air.name,"air")) then
        return true

    end

    return false

end -- cv.lib.check_air
