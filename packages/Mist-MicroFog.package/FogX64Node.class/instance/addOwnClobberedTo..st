x64-compiling-pass1
addOwnClobberedTo: aClobberedSet

	"If my own execution uses or clobbers any locations other than my own input and output variables, such as scratch registers or registers clobbered by a function or kernel call, add those to the given clobbered set."
	
	"Many nodes do not clobber anything"