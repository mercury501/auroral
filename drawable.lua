local love = require("love")
local class = require("auroral.middleclass")
require "auroral.sprite"

Drawable = class("Drawable", Sprite)

function Drawable:initialize(image, quad, posX, posY, scaleFactor)

	Sprite.initialize(self, image, quad)

	self.posX = posX or 0
	self.posY = posY or 0
	self.scaleFactor = scaleFactor or 1
	self._hidden = false
end

function Drawable:hide()

	self._hidden = true
end

function Drawable:show()

	self._hidden = false
end

function Drawable:draw()

	if self._hidden then
		return
	end

	love.graphics.draw(self.image, self.quad, self.posX, self.posY, 0, self.scaleFactor, self.scaleFactor)
end

function Drawable:drawOffset(offsetX, offsetY)
	
	if self._hidden then
		return
	end

	love.graphics.draw(self.image, self.quad, self.posX + offsetX, self.posY + offsetY, 0, self.scaleFactor, self.scaleFactor)
end
