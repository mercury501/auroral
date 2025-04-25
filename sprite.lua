local class = require("auroral.middleclass")

Sprite = class("Sprite")

function Sprite:initialize(image, quad)
	self.image = image
	self.quad = quad or nil
end

function Sprite:getImage()
	return self.image
end

function Sprite:getQuad()
	return self.quad
end