local player = require("Player")

function love.load()
    main_player = player:init({
        position = {x =200, y =120},
        size = 1,
        width = 10.0,
        height = 30.0,
        vertices = {}
    })
    main_player.vertices = IsoscelesTriangle(main_player.position, main_player.width, main_player.height)
    print(main_player.vertices)
end

function love.update(dt)

end

function love.draw()
   local dt = love.timer.getDelta()
   main_player:draw(dt)

end