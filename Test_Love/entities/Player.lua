shapes = require("lib/shapes")


Player = {
    position = {},
    size = 0,
    width = 0,
    height = 0,
    vertices = {},
    angle = 0
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

function Player:rotate(angle)
    main_player.vertices = isoscelesTriangle(main_player.position, main_player.width, main_player.height, main_player.angle)
    self.angle  = self.angle + angle
end


return Player