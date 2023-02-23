require "stage"

playerWidth = 50
playerHeight = 50
playerSpeed = 5

rightEdgeLimit = playingAreaWidth - playerWidth
bottomEdgeLimit = playingAreaHeight - playerHeight - groupZoneHeight

function resetPlayer()
    playerPosX = (playingAreaWidth - playerWidth) / 2
    playerPosY = (playingAreaHeight - playerHeight) / 2
end

function updatePlayer()
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

function drawPlayer()
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle('fill', playerPosX, playerPosY, playerWidth, playerHeight)
end