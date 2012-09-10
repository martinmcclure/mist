instruction disassembly
immediateByte: byte
	bytes add: byte.
	operands do: [:op | op immediateByte: byte]