accessing
asAJOperand
	"Kludge to allow use with AsmJit in the interim."

	| asmJitName |
	asmJitName := name asUppercase.
	^ AJx64Assembler new perform: asmJitName asSymbol