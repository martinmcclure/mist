instruction disassembly
sibByte: byte
	bytes add: byte.
	operands do: [ :op | op sibByte: byte ]