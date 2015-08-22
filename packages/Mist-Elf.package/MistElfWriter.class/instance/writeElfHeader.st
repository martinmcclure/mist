ELF header
writeElfHeader 

	self writeIdent;
	write2: 2; "type executable"
	write2: self eMachine;
	write4: 1; "current version"
	writeAddress: elfInfo entryAddress; "the address to start executing code"
	writeAddress: self headerSize; "program header table immediately follows this header"
	writeAddress: 0; "section header table offset, none in this case"
	write4: 0; "processor-specific flags. I don't know what's supposed to be here."
	write2: self headerSize; "size of this header in bytes"
	write2: self programHeaderTableEntrySize; "bytes in a program header table entry"
	write2: 1; "number of program header table entries"
	write2: 0; "size of a section table entry, which we're not using"
	write2: 0; "number of section header table entries"
	write2: 0. "string index undefined"
	