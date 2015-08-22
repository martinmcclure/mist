tests
test42
	"Write the hand-assembled program to a 64-bit ELF file, and run it.
	The program should exit with code 42."

	| elfInfo program imageStream loadAddress elfClass headersSize |
	program := #[16rC7 16rC0 252 0 0 0 16rC7 16rC3 16r2A 00 00 00 16rCD 16r80].	"16rCC"	"mov rax,231 (exit_group)"	"mov rdi,16r2a"	"syscall"
	loadAddress := 16r400000.
	elfClass := MistElf32Writer.
	headersSize := elfClass headerSize + elfClass programHeaderTableEntrySize.
	elfInfo := MistElfInfo new.
	elfInfo
		bitWidth: 32;
		loadAddress: loadAddress;
		entryAddress: loadAddress + headersSize;
		segmentSize: 16r1000;
		segmentSizeInFile: headersSize + program size.	"One page is plenty for this executable."
	imageStream := self fileStream.
	(elfClass for: elfInfo on: imageStream) write.
	imageStream
		nextPutAll: program;
		close.
	self executeWithInput: '' expectingOutput: '' expectingExitStatus: 42