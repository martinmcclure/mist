public
compile: rootNode
	"Compile the Fog tree with the given root node."

	codeStream := X64CodeStream compiler: self.
	rootNode pass1CompileWith: self siblingClobbered: (ClobberedSet compiler: self).
	rootNode pass2CompileOn: codeStream.
	^ codeStream contents