initialize-release
initializeGroup5
	"Inc, dec, call, jmp, push instructions that get their mnemonic from the ModRM byte reg field."

	"The group5 mnemonic will be replaced based on the modRMByte"

	self
		at: 16rFF putMnemonic: 'group5';
		at: 16rFF putOperandTypes: #(#Ev #group5)	"
		NOTE that Ev is not correct for far calls and jmps.
		Mist doesn't use these, so those bit patterns will
		be disassembled with an 'unhandled' mnemonic."