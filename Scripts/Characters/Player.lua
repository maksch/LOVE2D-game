require("Scripts.Controls.PlayerMovement")
require("Scripts.Positions.PlayerPosition")
require("Scripts.Math.Bounce")

local atlas
local subimage

local xQuadDimension = 32
local yQuadDimension = 32

local xtheta = 0
local ytheta = 0

function loadPlayer()
	setPosition(100,100)
	atlas = love.graphics.newImage("Art/creatures.png")
	subimage = love.graphics.newQuad(32 * 1, 32 * 4, 
		xQuadDimension,yQuadDimension,
		atlas:getDimensions())
end

function drawPlayer()
	CheckPlayerMovement()
	love.graphics.draw(atlas, subimage, getXPosition(), 
		getYPosition(), getRotation(), 
		getXDirection() * (bounce(xtheta * getSpeed(), 1.84, 1.56, 0.0452, 0.123) + 0.8), 
		(bounce(ytheta * getSpeed(), 1.24, 1.676, 0.142, 0.0523) + 1), 
		xQuadDimension / 2,yQuadDimension / 2)
	xtheta = xtheta + 0.1
	ytheta = ytheta + 0.1
end