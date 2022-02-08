matrix = require("lib/matrix")

-- Private functions
local function rotateVector(position,direction)
    local c = math.cos(direction)
    local s = math.sin(direction)
    return {x = c*position.x - s*position.y, y = s*position.x + c*position.y} 
end


-- Public functions
function isoscelesTridirection(position, width, height, direction)
    local widthRadius, heightRadius = width / 2, height / 2
    local tip = {x = position.x, y = position.y - heightRadius}
    tip = rotateVector(tip, direction)
    local leftCorner = {x = position.x + widthRadius, y = position.y + heightRadius} --relative to ship pointing upwards
    leftCorner = rotateVector(leftCorner, direction)
    local rightCorner = {x = position.x - widthRadius, y = position.y + heightRadius}
    rightCorner = rotateVector(rightCorner, direction)
    return {tip.x, tip.y, leftCorner.x, leftCorner.y, rightCorner.x, rightCorner.y}
end 
--[[
-- returns tables of vertices for use with graphics drawing functions
function isoscelesTridirection(position, width, height, direction)
    local widthRadius, heightRadius = width / 2, height / 2
    local x1, y1 = position.x, position.y - heightRadius
    local x2, y2 = position.x + widthRadius, position.y + heightRadius
    local x3, y3 = position.x - widthRadius, y2
    return {x1, y1, x2, y2, x3, y3}
end 
]]