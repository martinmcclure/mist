instruction byte handling
modRMByte: byte
	| regmem regOp regmemOp |
	mod := byte bitShift: -6.
	regmem := instruction bBit
		ifTrue: [ 8 ]
		ifFalse: [ 0 ].
	regmem := regmem + (byte bitAnd: 16r7).	"Decode the operands"
	mod = 0
		ifTrue: [ self error: 'Register indirect mode not yet handled' ].
	mod = 1
		ifTrue: [ self error: 'Reg + disp8 mode not yet handled' ].
	mod = 2
		ifTrue: [ self error: 'Reg + disp32 mode not yet handled' ].
	mod = 3
		ifTrue: [ regNum := regmem ]