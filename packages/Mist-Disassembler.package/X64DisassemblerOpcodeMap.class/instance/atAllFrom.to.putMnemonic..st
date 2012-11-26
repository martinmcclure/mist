public
atAllFrom: start to: stop putMnemonic: mnemonic
	| action |
	action := X64DisassemblerOpcodeAction new.
	action mnemonic: mnemonic.
	self atAllFrom: start to: stop put: action