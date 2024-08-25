require("src/engine/loader")

Display = {}

function Display:draw() 
    love.graphics.printf(VisibleText .. Cursor, Font, 0, GameHeight * 0.01, GameWidth, "left")
end 