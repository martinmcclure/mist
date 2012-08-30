rules-instruction support
movImm64ToReg
	^ (PPPredicateObjectParser
		on: [ :opcode | currentInstruction rexW and: [ opcode between: 16rB8 and: 16rBF ] ]
		message: 'expected movImm64ToReg instruction')
		==> [ :opcode | 
			currentInstruction
				mnemonic: 'movabs';
				movImm64ToRegNum: (opcode bitOr: 7) ] , imm64