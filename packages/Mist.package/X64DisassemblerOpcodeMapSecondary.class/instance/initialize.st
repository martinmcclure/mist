as yet unclassified
initialize
	| action |
	map := Array new: 256.
	action := X64DisassemblerOpcodeAction new.
	action mnemonic: 'syscall'.
	self at: 5 put: action