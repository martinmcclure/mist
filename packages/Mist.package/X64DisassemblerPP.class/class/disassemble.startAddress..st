public
disassemble: bytes startAddress: addressInt
	| inst |
	inst := self new.
	inst currentAddress: addressInt.
	^ inst parse: bytes