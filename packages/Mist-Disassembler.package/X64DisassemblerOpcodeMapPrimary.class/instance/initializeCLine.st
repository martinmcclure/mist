initialize-release
initializeCLine
	| action |
	action := X64DisassemblerOpcodeAction new.
	action mnemonic: 'int3'.
	self at: 16rCC put: action