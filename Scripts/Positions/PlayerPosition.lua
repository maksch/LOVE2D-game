local xPosition
local yPosition 

local xDirection = 1
local yDirection = 1

function setPosition(newXPosition, newYPosition)
	xPosition = newXPosition
	yPosition = newYPosition
end

function setXPosition(newXPosition)
	xPosition = newXPosition
end
function setYPosition(newYPosition)
	yPosition = newYPosition
end

function getXPosition()
	return xPosition
end
function getYPosition()
	return yPosition
end

function setXDirection(newXDirection)
	xDirection = newXDirection
end
function setYDirection(newYDirection)
	yDirection = newYDirection
end

function getXDirection()
	return xDirection
end
function getYDirection()
	return yDirection
end