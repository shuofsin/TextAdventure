function love.load() 
    -- Formating information
    Font = love.graphics.newFont('assets/fonts/PixelOperator8.ttf', 30)

    -- Text
    TotalText = "You feel old. There is a aching pain eminating from your lower back. Your body no longer seems able to hold a sitting position for long anymore. You have your legs crossed rather akwardly, positioned as such to provide comfort not to yourself, but instead to gift stability to the laptop upon your lap. It's interesting how much you bend over backwards to accomodate me. It's predicated on the notion that it improves your life. But how much does it improve your life, and how much does it change it?"
    VisibleText = ""

    -- windows information for printing
    GameWidth = love.graphics.getWidth()
    GameHeight = love.graphics.getHeight()

    -- Add a letter to the display according to a timer
    TickBegin = love.timer.getTime() 
    TickEnd = love.timer.getTime() 
    WritingSpeed = 0.1
    TimeBetweenTicks = WritingSpeed

    -- cursor 
    Cursor = "|"
    CursorSpeed = 0.5
end 

function love.update(dt)
    TickEnd = love.timer.getTime() 
    if TickEnd - TickBegin >= TimeBetweenTicks then
        if #TotalText ~= 0 then
            local c = TotalText:sub(1, 1)
            TotalText = TotalText:sub(2)
            VisibleText = VisibleText .. c 
            TimeBetweenTicks = WritingSpeed
            if c == "." then 
                TimeBetweenTicks = TimeBetweenTicks * 2
            end
        else
            if Cursor == "|" then Cursor = "" else Cursor = "|" end 
            TimeBetweenTicks = CursorSpeed
        end 
        TickBegin = love.timer.getTime() 
    end 
end 

function love.draw() 
    love.graphics.printf(VisibleText .. Cursor, Font, 0, GameHeight * 0.01, GameWidth, "left")
end 