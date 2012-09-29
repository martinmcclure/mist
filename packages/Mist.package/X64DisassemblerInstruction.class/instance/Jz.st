address modes sent by perform:
Jz
	"Op mode Jz, RIP-relative 32-bit displacement.
	Mist doesn't use the 16-bit version of Jz, so we only deal with the 32-bit one here."

	operands add: (X64DisassemblerDisp32Operand forInstruction: self)