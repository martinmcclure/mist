ELF header
writeIdent
	self
		write1: 16r7f; "magic"
		writeString: 'ELF';
		write1: self elfClass;
		write1: 1;
		write1: 1;
		write1: 0;
		write1: 0;
		writeZeros: 7		"little-endian"	"current version"	"os/abi=sysv"	"abiversion"	"padding"