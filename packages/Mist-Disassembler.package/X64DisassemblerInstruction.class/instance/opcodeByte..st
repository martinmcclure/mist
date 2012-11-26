instruction disassembly
opcodeByte: byte
	| action |
	bytes add: byte.
	action := nextOpcodeMap
		actionFor: byte
		repePrefix: haveRepePrefix
		repnePrefix: haveRepnePrefix
		addrSizePrefix: haveAddrSizePrefix.
	action performOn: self.