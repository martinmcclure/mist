instructions
movByteFromRegister: sourceReg toAddressIn: baseReg plusIndexIn: indexReg
	"A mov instruction to store the low-order 8 bits of the sourceReg to the memory maddress in baseReg, indexed by indexReg. All three arguments must be register locations."

	| rex modRm sib |
	(sourceReg isRegister and: [ baseReg isRegister and: [ indexReg isRegister ] ])
		ifFalse: [ self error: 'Source, destination address, and index must all be in registers.' ].
	(baseReg number = 5 or: [ baseReg number = 13 ])
		ifTrue: [ self error: 'address cannot be in rsp or r13' ].
	rex := 16r40 + (sourceReg highNumber * 4) + (indexReg highNumber * 2) + baseReg highNumber.
	rex = 16r40
		ifFalse: [ output nextPut: rex ].	"Don't need REX byte if all variable bits zero."
	output nextPut: 16r88.	"opcode"
	modRm := sourceReg lowNumber * 8 + 4.
	output nextPut: modRm.
	sib := indexReg lowNumber * 8 + baseReg lowNumber.	"scale is 0 for byte addressing"
	output nextPut: sib