local player = require("entities/Player")
test = require("lib/test_util")

function love.load()
    main_player = player:init({
        position = {x =200, y = 120},
        size = 1,
        width = 10,
        height = 15,
        vertices = {},
        angle = 0
    })

    main_player.vertices = isoscelesTriangle(main_player.position, main_player.width, main_player.height, main_player.angle)
    
end

function love.update(dt)
    main_player:rotate(math.rad(5))
end

function love.draw()
   local dt = love.timer.getDelta()
   main_player:draw(dt)
end