ELF header
writeIdent
	self write1: 16r7f; "magic"
	writeString: 'ELF';
	write1: 2; "ELFCLASS64"
	write1: 1; "little-endian"
	write1: 1; "current version"
	write1: 0; "os/abi=sysv"
	write1: 0; "abiversion"
	writeZeros: 7 "padding"