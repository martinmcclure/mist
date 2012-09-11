address modes sent by perform:
plusR
	"Op mode +rb, +rw, +rd, or +rq. 
	The operand is a register. Which register is specified by the REX.B and the low-order three bits of the opcode"

	| regNum |
	regNum := bBit
		ifTrue: [ 8 ]
		ifFalse: [ 0 ].
	regNum := regNum + (bytes last bitAnd: 7).
	operands add: (X64DisassemblerRPlusOperand forInstruction: self regNum: regNum)