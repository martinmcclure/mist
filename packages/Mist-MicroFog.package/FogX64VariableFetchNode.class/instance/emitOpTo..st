x64-compiling-pass2
emitOpTo: codeStream
	"My output location is never my variable's location, must emit a mov to get it there."

	codeStream mov: (variable location asOperandFor: codeStream) to: (parent generationLocation asOperandFor: codeStream)