function love.load()
    playingAreaWidth = 300
    playingAreaHeight = 600

    love.window.setMode(playingAreaWidth, playingAreaHeight)

    groupZoneHeight = 100
    groupZone2PosY = playingAreaHeight - groupZoneHeight

    playerWidth = 50
    playerHeight = 50
    playerSpeed = 5

    rightEdgeLimit = playingAreaWidth - playerWidth
    bottomEdgeLimit = playingAreaHeight - playerHeight - groupZoneHeight
    
    function reset()
        playerPosX = (playingAreaWidth - playerWidth) / 2
        playerPosY = (playingAreaHeight - playerHeight) / 2
        score = 0
    end

    letterChannelWidth = 10
    letterChannelHeight = playingAreaHeight - groupZoneHeight
    letterChannelPosX = (playingAreaWidth - letterChannelWidth) / 2
    letterChannelPosY = groupZoneHeight / 2

    reset()
end

function love.update(dt)
    if love.keyboard.isDown('left') and playerPosX > 0 then
        playerPosX = playerPosX - 1 * playerSpeed
    end
    if love.keyboard.isDown('right') and playerPosX < rightEdgeLimit then
        playerPosX = playerPosX + 1 * playerSpeed
    end
    if love.keyboard.isDown('up') and playerPosY > groupZoneHeight then
        playerPosY = playerPosY - 1 * playerSpeed
    end
    if love.keyboard.isDown('down') and playerPosY < bottomEdgeLimit then
        playerPosY = playerPosY + 1 * playerSpeed
    end
end

function love.keypressed(key)
    
end

function love.draw()
    love.graphics.setColor(.14, .36, .46)
    love.graphics.rectangle('fill', 0, 0, playingAreaWidth, playingAreaHeight)

    love.graphics.setColor(.5, .5, .5)
    love.graphics.rectangle('fill', 0, 0, playingAreaWidth, groupZoneHeight)

    love.graphics.setColor(.5, .5, .5)
    love.graphics.rectangle('fill', 0, groupZone2PosY, playingAreaWidth, groupZoneHeight)

    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle('fill', letterChannelPosX, letterChannelPosY, letterChannelWidth, letterChannelHeight)

    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle('fill', playerPosX, playerPosY, playerWidth, playerHeight)

    love.graphics.setColor(1, 1, 1)
    love.graphics.print(score, 15, 15)
end