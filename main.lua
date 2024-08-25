require("src/engine/loader")
require("src/engine/display")

function love.load()
    Loader:init()
end 

function love.update(dt)
    Loader:update(dt)
end 

function love.draw() 
    Display:draw()
end 