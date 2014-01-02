x64-compiling-pass1
acceptableGenerationLocations
	"I don't do any computation of my own; my result is the result of my last child.
	Thus, my generation location must be its consumption location."

	| lastChild |
	lastChild := children at: children size.
	^ FogX64LocationPreferences new onlyLocation: lastChild consumptionLocation