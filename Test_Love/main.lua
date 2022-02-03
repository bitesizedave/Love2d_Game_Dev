class = require "lib/30log-clean"

local tiny = require("lib.tiny")
local drawFilter = tiny.requireAll('isDrawSystem')
local player = require("Player")

function love.load()
    player.init()
end

function love.update(dt)

end

function love.draw()
    local dt = love.timer.getDelta()
    print(player)
    player.draw(dt)
end