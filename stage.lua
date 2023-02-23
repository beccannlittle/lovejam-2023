playingAreaWidth = 300
playingAreaHeight = 600

groupZoneHeight = 100
groupZone2PosY = playingAreaHeight - groupZoneHeight

letterChannelWidth = 10
letterChannelHeight = playingAreaHeight - groupZoneHeight
letterChannelPosX = (playingAreaWidth - letterChannelWidth) / 2
letterChannelPosY = groupZoneHeight / 2

function drawStage()
    love.graphics.setColor(.14, .36, .46)
    love.graphics.rectangle('fill', 0, 0, playingAreaWidth, playingAreaHeight)

    love.graphics.setColor(.5, .5, .5)
    love.graphics.rectangle('fill', 0, 0, playingAreaWidth, groupZoneHeight)

    love.graphics.setColor(.5, .5, .5)
    love.graphics.rectangle('fill', 0, groupZone2PosY, playingAreaWidth, groupZoneHeight)

    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle('fill', letterChannelPosX, letterChannelPosY, letterChannelWidth, letterChannelHeight)
end