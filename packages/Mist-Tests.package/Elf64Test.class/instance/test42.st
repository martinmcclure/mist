tests
test42
	"Write the hand-assembled program to a 64-bit ELF file, and run it.
	The program should exit with code 42."

	| elfInfo program imageStream |
	program := #["16rCC" 16r48 16rC7 16rC0 231 0 0 0 16r48 16rC7 16rC7 16r2A 00 00 00 16r0F 16r05].	"mov rax,231 (exit_group)"	"mov rdi,16r2a"	"syscall"
	elfInfo := MistElfInfo new.
	elfInfo
		loadAddress: 16r400000;
		entryAddress: 16r400080;
		segmentSize: 16r1000;
		segmentSizeInFile: 128 + program size.	"One page is plenty for this executable."
	imageStream := self fileStream.
	(MistElfWriter for: elfInfo on: imageStream)
		write;
		write8: 0.
	imageStream
		nextPutAll: program;
		close.
	self executeWithInput: '' expectingOutput: '' expectingExitStatus: 42