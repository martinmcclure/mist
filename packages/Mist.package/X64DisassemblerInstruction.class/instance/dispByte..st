instruction disassembly
dispByte: byte
	bytes add: byte.
	operands do: [ :op | op dispByte: byte ]