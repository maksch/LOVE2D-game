function drawDebugInstructions()
	love.graphics.print("a to lower volume", 10, 300)
	love.graphics.print("s to increase volume", 10, 320)
	
	love.graphics.print("arrow keys to move", 10, 360)
	love.graphics.print("z to run", 10, 380)
	love.graphics.print("x to walk slowly", 10, 400)
	
	love.graphics.print("f to rotate clockwise", 10, 440)
	love.graphics.print("g to rotate counter-clockwise", 10, 460)
	love.graphics.print("r to reset rotation", 10, 480)
end