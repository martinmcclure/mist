x64-compiling-pass1
addOwnClobberedTo: aClobberedSet

	"If my own execution uses or clobbers any locations other than my own input and output variables, or the scratch registers rax, rbx, and r11,, add those to the given clobbered set. Must add any scratch registers that I *might* use."
	
	"Many nodes do not clobber anything"