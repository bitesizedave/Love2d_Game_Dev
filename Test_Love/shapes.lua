-- returns tables of vertices for use with graphics drawing functions
function IsoscelesTriangle(position, width, height)
    local widthRadius = width / 2
    local heightRadius = height / 2
    local x1 = position.x
    local y1 = position.y - heightRadius
    local x2 = position.x + widthRadius
    local y2 = position.y + heightRadius
    local x3 = position.x - widthRadius
    local y3 = y2
    return {x1, y1, x2, y2, x3, y3}
end 