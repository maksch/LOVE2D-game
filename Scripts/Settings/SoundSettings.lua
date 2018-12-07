local sound = love.audio.newSource("Audio/TownTheme.mp3", "stream")

function loadSound()
	love.audio.play(sound)
end

function checkSoundChange()
	if love.keyboard.isDown("s") and sound:getVolume() < 1 then 
		sound:setVolume(sound:getVolume() + 0.01)
		if(sound:getVolume() > 1) then
			sound:setVolume(1)
		end
	end
	if love.keyboard.isDown("a") and sound:getVolume() >= 0 then
		sound:setVolume(sound:getVolume() - 0.01)
		if(sound:getVolume() < 0.1) then
			sound:setVolume(0)
		end
	end
end