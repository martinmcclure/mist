x64-compiling-pass1
addOwnClobberedTo: aClobberedSet
	"If my own execution uses or clobbers any locations other than my own input and output variables, add those to the given clobbered set."

	"System calls clobber rcx and r11, and use rax for the syscall number and return value. rcx may be an inputVariable, but clobbering twice is OK."

	| l |
	l := FogX64Location.
	aClobberedSet
		"add: (l r: #rax);"
		add: (l r: #rcx)";
		add: (l r: #r11)" "Don't add scratch registers to clobbered"