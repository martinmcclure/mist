x64-compiling-pass2
emitOpTo: codeStream
	| source dest |
	source := self sourceLoc asOperandFor: codeStream.
	dest := self destLoc asOperandFor: codeStream.
	codeStream cmp: source with: dest