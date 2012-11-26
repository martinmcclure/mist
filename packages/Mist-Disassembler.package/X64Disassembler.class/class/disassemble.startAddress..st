instance creation
disassemble: bytes startAddress: addressInt
	| inst input output |
	inst := self new.
	input := ReadStream on: bytes.
	output := WriteStream on: (String new: bytes size * 20).
	inst currentAddress: addressInt.
	inst disassemble: input to: output.
	^ output contents