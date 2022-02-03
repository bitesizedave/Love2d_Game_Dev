local components = require("common_components")
local Player = class("Player")

function Player:init(args)
    self.position = {200, -125}
    self.vertices = {x1 = 50, x2 = 50, y1 = 100, y2 = 50, z1 = 75, z2 = 100}
end

function Player:draw(dt)
    love.graphics.setColor(1,1,1,1)
    love.graphics.polygon("fill", self.vertices)
end

return Player