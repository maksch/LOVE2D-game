require("Scripts.Characters.Player")

local sound = love.audio.newSource("Audio/TownTheme.mp3", "stream")
local sunset

function love.load()
	sunset = love.graphics.newImage("Art/sunset.png")
	loadPlayer()
	love.audio.play(sound)
	love.keyboard.setKeyRepeat(true, 0)
end

function love.draw()
	love.graphics.draw(sunset, 0, 0)
	drawPlayer()
	if love.keyboard.isDown("s")
	and sound:getVolume() < 1 then
		sound:setVolume(sound:getVolume() + 0.01)
	end
	if love.keyboard.isDown("a") 
	and sound:getVolume() >= 0 then
		sound:setVolume(sound:getVolume() - 0.01)
		if(sound:getVolume() < 0.1) then
			sound:setVolume(0)
		end
	end
	
	
	love.graphics.print("a to lower volume", 10, 300)
	love.graphics.print("s to increase volume", 10, 320)
	
	love.graphics.print("arrow keys to move", 10, 360)
	love.graphics.print("z to run", 10, 380)
	love.graphics.print("x to walk slowly", 10, 400)
	
	love.graphics.print("f to rotate clockwise", 10, 440)
	love.graphics.print("g to rotate counter-clockwise", 10, 460)
	love.graphics.print("r to reset rotation", 10, 480)
end
