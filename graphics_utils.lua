local love = require("love")

local graphics_utils = {}

function graphics_utils.loadTexture(fileName, columns, rows)
	
    local image = love.graphics.newImage(fileName)
    local quads = {}
    local imageWidth, imageHeight = image:getDimensions()
    local quadWidth = imageWidth / columns
    local quadHeight = imageHeight / rows

    for row = 1, rows do
        quads[row] = {}
        for col = 1, columns do
            local quad = love.graphics.newQuad(
                (col - 1) * quadWidth,
                (row - 1) * quadHeight,
                quadWidth,
                quadHeight,
                imageWidth,
                imageHeight
            )
            quads[row][col] = { quad = quad, image = image }
        end
    end

    return quads
end

return graphics_utils