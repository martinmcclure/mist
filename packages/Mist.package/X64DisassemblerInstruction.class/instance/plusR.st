address modes sent by perform:
plusR
	"Op mode +rq. Always assumed to be a 64-bit register in Mist.
	The operand is a register. Which register is specified by the REX.B and the low-order three bits of the opcode"

	| regNum |
	regNum := bBit
		ifTrue: [ 8 ]
		ifFalse: [ 0 ].
	regNum := regNum + (bytes last bitAnd: 7).
	operands add: (X64DisassemblerRPlusOperand forInstruction: self regNum: regNum)