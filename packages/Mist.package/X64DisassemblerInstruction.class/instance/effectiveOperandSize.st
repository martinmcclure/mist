private
effectiveOperandSize
	"Answer in bytes (1, 2, 4, or 8) the size."

	| opSize |
	"Set to default"
	opSize := defaultOpSizeIs64
		ifTrue: [ 8 ]
		ifFalse: [ 4 ].	"Could be overridden to 16-bit by opSize prefix."
	haveOpSizePrefix
		ifTrue: [ opSize := 2 ].	"That, in turn, could be overridden by REX prefix"
	wBit
		ifTrue: [ opSize := 8 ].	"But byte-operand opcodes always trump."
	isByteOpMode
		ifTrue: [ opSize := 1 ].
	^ opSize