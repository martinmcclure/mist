initialize-release
initializeGroup2
	"Rotate and shift instructions that get their mnemonic from the ModRM byte reg field."

	"The group2 mnemonic will be replaced based on the modRMByte"

	self
		atAllFrom: 16rC0 to: 16rC1 putMnemonic: 'group2';
		atAllFrom: 16rD0 to: 16rD3 putMnemonic: 'group2';
		at: 16rC0 putOperandTypes: #(#Eb #Ib #group2);
		at: 16rC1 putOperandTypes: #(#Ev #Ib #group2);
		at: 16rD0 putOperandTypes: #(#Eb #one #group2);
		at: 16rD1 putOperandTypes: #(#Ev #one #group2);
		at: 16rD2 putOperandTypes: #(#Eb #CL #group2);
		at: 16rD3 putOperandTypes: #(#Ev #CL #group2)