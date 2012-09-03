instruction disassembly
modRMByte: byte
	| mod reg regmem regOp regmemOp |
	bytes add: byte.	"Split the byte into its fields, extended by bits from the REX prefix"
	mod := byte bitShift: -6.
	reg := rBit
		ifTrue: [ 8 ]
		ifFalse: [ 0 ].
	reg := reg + ((byte bitAnd: 16r3F) bitShift: -3).
	regmem := bBit
		ifTrue: [ 8 ]
		ifFalse: [ 0 ].
	regmem := regmem + (byte bitAnd: 16r7).	"Decode the operands"
	regOp := RegisterNames at: reg + 1.
	mod = 0
		ifTrue: [ self error: 'Register indirect mode not yet handled' ].
	mod = 1
		ifTrue: [ self error: 'Reg + disp8 mode not yet handled' ].
	mod = 2
		ifTrue: [ self error: 'Reg + disp32 mode not yet handled' ].
	mod = 3
		ifTrue: [ regmemOp := RegisterNames at: regmem + 1 ].	"The opcode specified which one is the destination operand"
	regIsDest
		ifTrue: [ 
			operands
				at: 1 put: regOp;
				at: 2 put: regmemOp ]
		ifFalse: [ 
			operands
				at: 1 put: regmemOp;
				at: 2 put: regOp ]