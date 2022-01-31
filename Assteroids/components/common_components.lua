local common_component = {}

-- Position
function common_component.position(x, y)
    return {x = x, y = y}
end

-- Collision
function common_component.collision(radius)
    return {radius = radius}
end

-- Velocity
function common_component.velocity(x, y, acceleration, friction, max_speed)
    return {
        x = x,
        y = y,
        acceleration = acceleration,
        friction = friction,
        max_speed = max_speed
    }
end

-- Health
function common_component.health(amount)
    return {
        amount = amount,
        max = amount
    }
end

-- Image
function common_component.sprite(string, origin_x, origin_y)
    return {
        image = love.graphics.newImage(string),
        origin = {x = origin_x, y = origin_y}
    }
end

-- Timer
function common_component.timer(duration)
    return {duration = duration}
end

-- Sound
function common_component.sound(string)
    return love.audio.newSource(string, "static")
end

-- Return the common_component object
return common_component