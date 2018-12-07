require("Scripts.Characters.Player")
require("Scripts.Environments.GameMap")
require("Scripts.Settings.SoundSettings")
require("Scripts.Settings.CodeSettings")

require("Scripts.Debug.DebugInstructions")

function love.load()
	loadCodeSettings()
	
	loadMap()
	loadPlayer()
	loadSound()
end

function love.draw()
	drawMap()
	drawPlayer()
	checkSoundChange()
	
	drawDebugInstructions()
end