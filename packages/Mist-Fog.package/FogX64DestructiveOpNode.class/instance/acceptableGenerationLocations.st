x64-compiling-pass1
acceptableGenerationLocations
	"A destructive op, by definition, forms its result by overwriting its destination variable.
	So that is the only acceptable generation location for my output."

	^ {(self destination consumptionLocation)}