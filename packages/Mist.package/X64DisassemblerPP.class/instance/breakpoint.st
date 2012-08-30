rules-instructions
breakpoint
	^ (PPPredicateObjectParser on: [ :opcode | opcode == 16rCC ] message: 'expected breakpoint')
		==> [ currentInstruction mnemonic: 'breakpoint' ]