require("Scripts.Positions.PlayerPosition")

local speed = 0
local rotation = 0

function CheckPlayerMovement()
	resetSpeed()
	setSpeed(3)
	setRotation()
	xMovement()
	yMovement()
end

function setRotation()
	if love.keyboard.isDown("f") then
		rotation = rotation + 0.1 * speed
	end
	if love.keyboard.isDown("g") then
		rotation = rotation - 0.1 * speed
	end
	if love.keyboard.isDown("r") then
		rotation = 0
	end
end

function getRotation()
	return rotation
end


function xMovement()
	if love.keyboard.isDown("left") then
		setXPosition(getXPosition()-speed)
		setXDirection(1)
	end
	if love.keyboard.isDown("right") then
		setXPosition(getXPosition()+speed)
		setXDirection(-1)
	end
	return 0
end
function yMovement()
	if love.keyboard.isDown("up") then
		setYPosition(getYPosition()-speed)
		setYDirection(1)
	end
	if love.keyboard.isDown("down") then
		setYPosition(getYPosition()+speed)
		setYDirection(-1)
	end
	return 0
end

function getSpeed()
	return speed
end
function setSpeed(newSpeed)
	if love.keyboard.isDown("z") then
		speed = newSpeed
	end
	if love.keyboard.isDown("x") then
		speed = 1/newSpeed
	end
end

function resetSpeed()
	speed = 1
end

