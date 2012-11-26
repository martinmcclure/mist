public
performOn: anInstruction
	"The opcode is complete. Tell the instruction its mnemonic and its operand types."

	anInstruction
		hasCompleteOpcode: true;
		mnemonic: mnemonic;
		defaultOpSizeIs64: defaultOpSizeIs64.
	operandTypes do: [ :typeSymbol | anInstruction perform: typeSymbol ]