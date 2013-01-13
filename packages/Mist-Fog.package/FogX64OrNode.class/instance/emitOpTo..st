x64-compiling-pass2
emitOpTo: codeStream
	codeStream or: (self sourceLoc asOperandFor: codeStream) to: (self destLoc asOperandFor: codeStream)