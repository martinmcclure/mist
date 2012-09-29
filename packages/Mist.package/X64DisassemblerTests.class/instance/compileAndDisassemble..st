support
compileAndDisassemble: program
	"Compile the given Fog program, then answer the string representing its disassembly."

	| nativeCode compiler startAddress |
	startAddress := 16r00400078.
	compiler := FogX64Compiler new.
	compiler startAddress: startAddress.
	nativeCode := compiler compile: program.
	^ X64Disassembler disassemble: nativeCode startAddress: startAddress