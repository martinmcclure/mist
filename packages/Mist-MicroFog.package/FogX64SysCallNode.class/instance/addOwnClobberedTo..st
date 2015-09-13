x64-compiling-pass1
addOwnClobberedTo: aClobberedSet
	"If my own execution uses or clobbers any locations other than my own input and output variables, add those to the given clobbered set."

	"System calls clobber rcx and r11, and use rax for the syscall number and return value. rcx may be an inputVariable, but clobbering twice is OK. rax and r11 are scratch registers and don't need to be marked clobbered."

	| l |
	l := FogX64Location.
	aClobberedSet add: (l r: #rcx)