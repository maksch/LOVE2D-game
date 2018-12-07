local sunset

function loadMap()
	sunset = love.graphics.newImage("Art/sunset.png")
end

function drawMap()
	love.graphics.draw(sunset, 0, 0)
end