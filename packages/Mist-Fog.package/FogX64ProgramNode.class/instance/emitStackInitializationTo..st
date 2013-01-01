x64-compiling-pass2
emitStackInitializationTo: codeStream
	codeStream mov: 16r500000 to: (FogX64Location r: #rbp)	"At the moment, the base pointer rbp is initialized to 0x500000. This will not always be a constant.
	In the future, the stack pointer rsp will also need to be initialized here."