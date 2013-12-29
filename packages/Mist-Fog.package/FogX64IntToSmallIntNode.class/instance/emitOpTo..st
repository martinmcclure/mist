x64-compiling-pass2
emitOpTo: codeStream
	"shift left one, add one"

	| operand |
	operand := self destLoc asOperandFor: codeStream.
	codeStream
		sal: operand with: 1;
		add: operand with: 1