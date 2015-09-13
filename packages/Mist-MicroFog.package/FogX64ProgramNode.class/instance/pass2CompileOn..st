x64-compiling-pass2
pass2CompileOn: codeStream
	"Before my steps compile I must initialize the stack"

	self emitStackInitializationTo: codeStream.
	super pass2CompileOn: codeStream