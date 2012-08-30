x64-compiling-pass1
addOwnClobberedTo: aClobberedSet
	"If my own execution uses or clobbers any locations other than my own input and output variables, add those to the given clobbered set."

	"i only use scratch registers"

	"| l |
	l := FogX64Location.
	aClobberedSet add: (l r: #r10)"