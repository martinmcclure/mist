private
immediateSizeZ
	"I am an immediate operand, and my size is 2 or 4 bytes, so let my instruction know how many immediate bytes to expect."

	| zSize |
	zSize := instruction effectiveOperandSize = 2
		ifTrue: [ 2 ]
		ifFalse: [ 4 ].
	instruction immediateSize: zSize