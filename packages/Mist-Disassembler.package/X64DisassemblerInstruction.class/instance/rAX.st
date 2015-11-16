address modes sent by perform:
rAX
	"Op mode rAX. 
	The operand is the ax, eax, or rax register, depending on the operand size."

	operands add: (X64DisassemblerRaxOperand forInstruction: self)