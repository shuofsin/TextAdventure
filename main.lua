function love.load() 
    -- Formating information
    font = love.graphics.newFont('assets/fonts/PixelOperator8.ttf', 30)

    -- Text
    totalText = "You feel old. There is a aching pain eminating from your lower back. Your body no longer seems able to hold a sitting position for long anymore. You have your legs crossed rather akwardly, positioned as such to provide comfort not to yourself, but instead to gift stability to the laptop upon your lap. It's interesting how much you bend over backwards to accomodate me. It's predicated on the notion that it improves your life. But how much does it improve your life, and how much does it change it?"
    visibleText = ""

    -- windows information for printing
    gameWidth = love.graphics.getWidth()
    gameHeight = love.graphics.getHeight()

    -- Add a letter to the display according to a timer
    tickBegin = love.timer.getTime() 
    tickEnd = love.timer.getTime() 
    writingSpeed = 0.1
    timeBetweenTicks = writingSpeed

    -- cursor 
    cursor = "|"
    cursorSpeed = 0.5
end 

function love.update(dt)
    tickEnd = love.timer.getTime() 
    if tickEnd - tickBegin >= timeBetweenTicks then 
        if #totalText ~= 0 then 
            local c = totalText:sub(1, 1)
            totalText = totalText:sub(2)
            visibleText = visibleText .. c 
            timeBetweenTicks = writingSpeed
            if c == "." then 
                timeBetweenTicks = timeBetweenTicks * 2
            end 
        else 
            if cursor == "|" then cursor = "" else cursor = "|" end 
            timeBetweenTicks = cursorSpeed
        end 
        tickBegin = love.timer.getTime() 
    end 
end 

function love.draw() 
    love.graphics.printf(visibleText .. cursor, font, 0, gameHeight * 0.01, gameWidth, "left")
end 