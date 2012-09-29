support
compile: program andWriteTo: filename
	"Compile the given Fog program and write it to an ELF file with the given name."

	| compiler elfFile seg nativeCode |
	compiler := FogX64Compiler new.
	compiler startAddress: 16r00400078.
	nativeCode := compiler compile: program.
	elfFile := ElfFile new.
	elfFile entryAddress: compiler startAddress.
	seg := ElfSegment new.
	seg bytes: nativeCode.
	elfFile addSegment: seg.
	elfFile writeToFileNamed: filename.	
