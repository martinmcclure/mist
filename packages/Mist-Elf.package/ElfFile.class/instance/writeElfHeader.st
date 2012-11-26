ELF header
writeElfHeader 

	self writeIdent;
	write2: 2; "type executable"
	write2: 62; "machine: x86_64"
	write4: 1;  "current version"
	write8: entryAddress; "the address to start executing code"
	write8: 64; "program header table immediately follows this header"
	write8: 0; "section header table offset, none in this case"
	write4: 0; "processor-specific flags. I don't know what's supposed to be here."
	write2: 64; "size of this header in bytes"
	write2: 56; "bytes in a program header table entry"
	write2: segments size; "number of program header table entries"
	write2: 0; "size of a section table entry, which we're not using"
	write2: 0; "number of section header table entries"
	write2: 0. "string index undefined"
	