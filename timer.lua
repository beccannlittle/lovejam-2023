function newTimer(time,callback)
    local expired = false
    local timer = {}
    
    function timer.update(dt)
         if time < 0 then
               expired = true
               callback()
         end
         time = time - dt         
    end

    function timer.isExpired()
        return expired
    end

    return timer
end