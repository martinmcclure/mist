support
compileAndDisassemble: program
	"Compile the given Fog program, then answer the string representing its disassembly."

	| nativeCode |
	nativeCode := FogX64Compiler new compile: program.
	^ X64Disassembler disassemble: nativeCode startAddress: 16r00400078