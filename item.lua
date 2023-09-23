function newItem(position, color)
    local newItem = {}


    
    function item.update(dt)
                
    end

    function item.draw()
        love.graphics.setColor(.5, .5, .5)
    love.graphics.rectangle('fill', 0, 0, playingAreaWidth, groupZoneHeight)
    end

    return newItem
end