
local love = require("love")

local input = {}

function input.getMousePosition()
	local mouseX, mouseY = love.mouse.getPosition()
	return mouseX, mouseY
end

function input.getLeftMouseButton()
	return love.mouse.isDown(1)
end

function input.getRightMouseButton()
	return love.mouse.isDown(2)
end

return input