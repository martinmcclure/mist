rules-instructions
syscall
	^ (PPPredicateSequenceParser on: [ :opcode | opcode = #(16r0F 16r05) ] message: 'expected breakpoint' size: 2)
		==> [ currentInstruction mnemonic: 'syscall' ]