require "timer"

function spawner()

end


function love.load()
    myTimer = newTimer(2 , function() print("Your timer is due!") end)
end

function love.update(dt)
    if not myTimer.isExpired() then myTimer.update(dt) end
end