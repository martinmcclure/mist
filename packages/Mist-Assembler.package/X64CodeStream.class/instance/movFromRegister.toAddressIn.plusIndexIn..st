instructions
movFromRegister: sourceReg toAddressIn: baseReg plusIndexIn: indexReg
	"A mov instruction to store the 64 bits of sourceReg to the memory address in baseReg, indexed by indexReg. All three arguments must be register locations."

	| rex modRm sib |
	(sourceReg isRegister and: [ baseReg isRegister and: [ indexReg isRegister ] ])
		ifFalse: [ self error: 'Source, destination address, and index must all be in registers.' ].
	(baseReg number = 5 or: [ baseReg number = 13 ])
		ifTrue: [ self error: 'address cannot be in rsp or r13' ].
	rex := 16r48 + (sourceReg highNumber * 4) + (indexReg highNumber * 2) + baseReg highNumber.
	output nextPut: rex.
	output nextPut: 16r89.	"opcode"
	modRm := sourceReg lowNumber * 8 + 4.
	output nextPut: modRm.
	sib := 16rC0 + (indexReg lowNumber * 8) + baseReg lowNumber.	"scale is 3 for 64-bit indexing"
	output nextPut: sib