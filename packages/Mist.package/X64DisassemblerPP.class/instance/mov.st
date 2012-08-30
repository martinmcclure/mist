rules-instructions
mov
	^ movImm64ToReg / movRegMem64ToReg / movReg64ToRegMem ==> [ currentInstruction mnemonic: 'mov' ]