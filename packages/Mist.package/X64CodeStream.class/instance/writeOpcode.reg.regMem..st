helpers
writeOpcode: opcode reg: regLoc regMem: regMemLoc
	"Write a 64-bit instruction that uses ModRM but not SIB"

	| rex modRm |
	rex := 16r48 + (regLoc highNumber * 4) + regMemLoc highNumber.
	modRm := regMemLoc mode * 16r40 + (regLoc lowNumber * 8) + regMemLoc lowNumber.
	output
		nextPut: rex;
		nextPut: opcode;
		nextPut: modRm