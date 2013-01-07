x64-compiling-pass2
emitOpTo: codeStream
	| sourceOperand |
	sourceOperand := value negative
		ifTrue: [ AJImmediate ivalue: value ]
		ifFalse: [ AJImmediate new uvalue: value ].
	codeStream mov: sourceOperand to: parent generationLocation