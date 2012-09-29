x64-compiling-pass1
addOwnClobberedTo: aClobberedSet

	"If my own execution uses or clobbers any locations other than my own input and output variables, other than the scratch registers rax, rbx, and r11, add those to the given clobbered set."
	
	"Many nodes do not clobber anything"