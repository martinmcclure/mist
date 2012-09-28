instructions
movByteFromAddressIn: baseReg plusIndexIn: indexReg toRegister: destReg
	"A mov instruction to fetch 8 bits of memory from the address in baseReg, indexed by indexReg, and put those 64 bits in destReg. All three arguments must be register locations."

	| rex modRm sib |
	(destReg isRegister and: [ baseReg isRegister and: [ indexReg isRegister ] ])
		ifFalse: [ self error: 'Base address, index, and destination must all be in registers.' ].
	(baseReg number = 5 or: [ baseReg number = 13 ])
		ifTrue: [ self error: 'Base address cannot be in rsp or r13' ].
	rex := 16r40 + (destReg highNumber * 4) + (indexReg highNumber * 2) + baseReg highNumber.
	rex ~= 16r40
		ifTrue: [ output nextPut: rex ].
	output nextPut: 16r8A.	"opcode"
	modRm := destReg lowNumber * 8 + 4.
	output nextPut: modRm.
	sib := 16rC0 + (indexReg lowNumber * 8) + baseReg lowNumber.	"scale is 3 for 64-bit indexing"
	output nextPut: sib