x64-compiling-pass2
emitOpTo: codeStream
	codeStream and: (self destLoc asOperandFor: codeStream) with: (self sourceLoc asOperandFor: codeStream)