public
compile: rootNode
	"Compile the Fog tree with the given root node."

	"codeStream := X64CodeStream compiler: self."

	codeStream := AJx64Assembler noStackFrame.
	rootNode pass1CompileWith: self siblingClobbered: (ClobberedSet compiler: self).
	self ensureOddNumberOfStackTemps.
	rootNode pass2CompileOn: codeStream.
	^ codeStream bytes