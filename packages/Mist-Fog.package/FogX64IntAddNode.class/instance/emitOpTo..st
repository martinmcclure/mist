x64-compiling-pass2
emitOpTo: codeStream
	codeStream add: (self destLoc asOperandFor: codeStream) with: (self sourceLoc asOperandFor: codeStream)