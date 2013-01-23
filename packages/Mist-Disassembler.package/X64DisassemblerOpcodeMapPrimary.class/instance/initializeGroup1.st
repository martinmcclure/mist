initialize-release
initializeGroup1
	"Arithmetic instructions that get their mnemonic from the ModRM byte reg field."

	"The group1 mnemonic will be replaced based on the modRMByte"

	self
		atAllFrom: 16r80 to: 16r81 putMnemonic: 'group1';
		at: 16r80 putOperandTypes: #(#Eb #Ib #group1);
		at: 16r81 putOperandTypes: #(#Ev #Iz #group1);
		at: 16r83 putMnemonic: 'group1';
		at: 16r83 putOperandTypes: #(#Ev #Ib #group1)