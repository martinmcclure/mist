x64-compiling-pass2
emitTo: codeStream
	(parent isDummy and: [ self hasSideEffects not ])
		ifTrue: [ ^ self	"I have no effect, so no code" ].
	self
		emitInputMovsTo: codeStream;
		emitOpTo: codeStream;
		emitOutputMovTo: codeStream