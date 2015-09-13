x64-compiling-pass2
emitOpTo: codeStream
	"shr <location>, 1"

	codeStream sar: (self destLoc asOperandFor: codeStream) with: 1