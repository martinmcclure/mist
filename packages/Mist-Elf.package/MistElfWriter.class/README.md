ElfFile writes a file in x86_64 ELF format. It is currently limited to a single segment and no sections. Currently, the segment loads at 0x400000 and is 1MiB in length.

Instance Variables:
	elfInfo 		<ElfInfo> To be consulted about specifics of the ELF information being written
	segments	<SequenceableCollection of: ElfSegment>
	programHeader	<ProtoObject | PseudoContext>
	stream	<Stream> File being written
	entryAddress	<Integer, the address to start execution>