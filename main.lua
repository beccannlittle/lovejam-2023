require "stage"
require "player"

function love.load()
    love.window.setMode(playingAreaWidth, playingAreaHeight)

    function reset()
        resetPlayer()
    end
    reset()
end

function love.update(dt)
    updatePlayer()
end

function love.draw()
    drawStage()
    drawPlayer()
end