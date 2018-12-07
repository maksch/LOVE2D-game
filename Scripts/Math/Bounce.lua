function bounce(theta, mod1, mod2, amplifier1, amplifier2)
	return math.sin(theta * mod1) * amplifier1 + math.sin(theta * mod2) * amplifier2
end