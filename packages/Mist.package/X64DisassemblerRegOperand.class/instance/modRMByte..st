instruction byte handling
modRMByte: byte
	| regHigh |
	regHigh := instruction rBit
		ifTrue: [ 8 ]
		ifFalse: [ 0 ].
	regNum := regHigh + ((byte bitAnd: 16r3F) bitShift: -3)