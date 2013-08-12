support
compileAndDisassemble: sourceString
	"Compile the given source string into a Method, then answer the string representing its disassembly."

	| method |
	method := image compile: sourceString.
	^ method disassembled