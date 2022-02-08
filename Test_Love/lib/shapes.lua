-- Private functions
local function rotateVector(position,direction)
    local c = math.cos(direction)
    local s = math.sin(direction)
    return {x = c*position.x - s*position.y, y = s*position.x + c*position.y} 
end


-- Public functions
-- Draws a rotated triangle. Centered on half width and a third height 
function isoscelesTriangle(position, width, height, direction)
    local tip = {x = 0, y = -2*height/3}
    tip = rotateVector(tip, direction)
    tip.x, tip.y = tip.x + position.x, tip.y + position.y
    local leftCorner = {x = width/2, y = height/3}
    leftCorner = rotateVector(leftCorner, direction)
    leftCorner.x, leftCorner.y = leftCorner.x + position.x, leftCorner.y + position.y
    local rightCorner = {x = -width/2, y = height/3}
    rightCorner = rotateVector(rightCorner, direction)
    rightCorner.x, rightCorner.y = rightCorner.x + position.x, rightCorner.y + position.y
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