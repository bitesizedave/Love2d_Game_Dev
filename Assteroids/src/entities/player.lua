local components = require("common_components")
local class = require("30log-clean")

local Player = class("Player")

function Player:init(args)
    components.velocity(0, 0, 0, .1, 1000)
    components.position(200, -125)
end

function Player:draw(dt)
    love.graphics.polygon("fill",self.position.x + 10, self.position.x - 10, self.position.y + 20)
    print("In Player:draw")
end


