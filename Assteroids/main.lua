tiny = require "lib.tiny"
class = require "lib.30log-clean"
gamestate = require "lib.gamestate"


--local beholder = require "lib.beholder"

local drawFilter = tiny.requireAll('isDrawSystem')
local updateFilter = tiny.rejectAny('isDrawSystem')
function love.load()
    _G.world = world
end

function love.update(dt)
    if world then
        world:update(dt, updateFilter)
    end
end

function love.draw()
    local dt  = love.timer.getDelta
    if world then
        world:update(dt, drawFilter)
    end
end