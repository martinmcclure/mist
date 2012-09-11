instruction disassembly
modRMByte: byte
	bytes add: byte.
	operands do: [ :op | op modRMByte: byte ]