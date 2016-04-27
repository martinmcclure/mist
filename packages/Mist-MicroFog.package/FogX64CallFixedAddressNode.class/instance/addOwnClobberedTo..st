x64-compiling-pass1
addOwnClobberedTo: aClobberedSet
	"If my own execution uses or clobbers any locations other than my own input and output variables, add those to the given clobbered set."

	"Our one variation on the x64 ABI is that calls clobber all registers."

	| l |
	l := FogX64Location.
	aClobberedSet
		add: (l r: #rax);
		add: (l r: #rbx);
		add: (l r: #rcx);
		add: (l r: #rdx);
		add: (l r: #rbp);
		add: (l r: #rdi);
		add: (l r: #rsi);
		add: (l r: #r8);
		add: (l r: #r9);
		add: (l r: #r10);
		add: (l r: #r11);
		add: (l r: #r12);
		add: (l r: #r13);
		add: (l r: #r14);
		add: (l r: #r15)