shapes = require("lib/shapes")


Player = {
    position = {},
    size = 0,
    width = 0,
    height = 0,
    vertices = {},
    direction = 0 -- in math.rad(degrees)
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

function Player:rotate(direction)
    main_player.vertices = isoscelesTridirection(main_player.position, main_player.width, main_player.height, main_player.direction)
    self.direction  = self.direction + direction
end


return Player