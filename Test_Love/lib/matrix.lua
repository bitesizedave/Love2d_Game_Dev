-- From rosettacode.org
function matrixMult(m1,m2) 
    if #m1[1] ~= #m2 then       -- inner matrix-dimensions must agree
        return nil      
    end 
 
    local res = {}
 
    for i = 1, #m1 do
        res[i] = {}
        for j = 1, #m2[1] do
            res[i][j] = 0
            for k = 1, #m2 do
                res[i][j] = res[i][j] + m1[i][k] * m2[k][j]
            end
        end
    end
 
    return res
end

-- Returns a clockwise rotation matrix
function rotationMatrix(theta)
    return {{math.cos(theta), -math.sin(theta)}, {math.sin(theta), math.cos(theta)}}
end