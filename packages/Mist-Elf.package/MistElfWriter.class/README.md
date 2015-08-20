ElfFile writes the header for a file in x86_64 ELF format to a stream, based on the specifications in an MistElfInfo object. It is currently limited to a single segment and no sections. The segment is constructed to load the entire file into memory, then jump to a specified address to start the program.

Instance Variables:
	elfInfo 		<ElfInfo> To be consulted about specifics of the ELF information being written
	stream	<Stream> Stream to which the bytes of the header are written
