x64-compiling-pass2
emitOpTo: codeStream
	codeStream and: (self sourceLoc asOperandFor: codeStream) to: (self destLoc asOperandFor: codeStream)