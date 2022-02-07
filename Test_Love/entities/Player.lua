shapes = require("lib/shapes")


Player = {
    position = {},
    size = 0,
    width = 0,
    height = 0,
    vertices = {}
}

function Player:init(table)
    table = table or {}
    setmetatable(table, self)
    self.__index = self
    return table
end


function Player:draw(dt)
    love.graphics.setColor(1,1,1,1)
    love.graphics.polygon("fill", self.vertices)
end

return Player