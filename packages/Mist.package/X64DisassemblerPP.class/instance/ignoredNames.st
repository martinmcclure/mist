accessing
ignoredNames
	"Answer a collection of instance-variables that should not be automatically initialized with productions, but that are used internal to the composite parser."

	^ super ignoredNames , #(#currentInstruction #output #currentInstruction)