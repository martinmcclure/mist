instruction byte handling
sibByte: byte
	"SIB is scale, index, base.
	Scale is 1, 2, 4, or 8."

	| scaleField indexField baseField |
	scaleField := byte bitShift: -6.
	indexField := (byte bitShift: -3) bitAnd: 7.
	baseField := byte bitAnd: 7.
	indexScale := 2 raisedToInteger: scaleField.
	indexRegNum := instruction xBit
		ifTrue: [ 8 + indexField ]
		ifFalse: [ indexField ].
	baseRegNum := instruction bBit
		ifTrue: [ 8 + baseField ]
		ifFalse: [ baseField ].
	baseField = 5 & (mod = 0)
		ifTrue: [ 
			isAbsolute := true.
			instruction displacementSize: 4 ]