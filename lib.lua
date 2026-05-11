--[[
	**********************************************
    ***             cucina_vegana              ***
    ***               lib.lua                  ***
	**********************************************
]]--

local cv = cucina_vegana
local S = cv.get_translator
math.randomseed(os.time())

function cv.lib.register_bottom_abm(node, nextnode, duration, light)
    local percent = 1

    if core.registered_nodes[node] then
        core.register_abm({
            nodenames = {node},
            interval = duration,
            chance = percent,
            catch_up = true,
            action = function(pos, node, active_object_count, active_object_count_wider)
                local nodepos = pos
                if cv.lib.check_soil(nodepos) then
                    if cv.lib.check_light(nodepos, light) then
                        core.set_node(nodepos, {name = nextnode})
                    end
                end
            end,
        })
    end
end

function cv.lib.register_top_abm(node, nextnode, duration, light)
    local percent = 1

    if core.registered_nodes[node] then
        core.register_abm({
            nodenames = {node},
            interval = duration,
            chance = percent,
            catch_up = true,
            action = function(pos, node, active_object_count, active_object_count_wider)
                local nodepos = pos
                if cv.lib.check_light(nodepos, light) then
                    core.set_node(nodepos, {name = nextnode})
                end
            end,
        })
    end
end

function cv.lib.check_light(pos, level)
    local node = core.get_node_or_nil(pos)

    if node then
        local light = core.get_node_light(pos) or 0
        if light >= level then
            return true
        end
    end

    return false
end

function cv.lib.check_soil(pos)
    local below = {x = pos.x, y = pos.y - 1, z = pos.z}
    local soil = core.get_node_or_nil(below)

    if soil and core.get_item_group(soil, "group:soil") then
        return true
    end

    return false
end

function cv.lib.check_air(pos)
    local air = core.get_node_or_nil(pos)
    if air and string.match(air.name, "air") then
        return true
    end

    return false
end

function cv.lib.coffee_effect(player)
    if not player then return end

    local playername  = player:get_player_name()
    local seconds     = cv.settings.coffee_effect_duration
    local highspeed   = cv.settings.coffee_effect_speed
    local normalspeed = 1

    player:set_physics_override({speed = highspeed})
    core.chat_send_player(playername, S("Coffeespeed. @1 Seconds left.", seconds))

    core.after(seconds / 2, function()
        core.chat_send_player(playername, S("@1 Seconds left.", seconds / 2))
    end)

    core.after(seconds, function()
        core.chat_send_player(playername, S("You move normal again."))
        player:set_physics_override({speed = normalspeed})
    end)
end
