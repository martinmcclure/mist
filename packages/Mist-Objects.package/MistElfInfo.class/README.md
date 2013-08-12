A MistElfInfo is always the first object in a MistImage, and provides the ELF header and segment information that the Linux kernel needs to load and run the image. Mist images are currently a single ELF segment, which keeps things simple. Someday the Mist stack may be a second segment.

Instance Variables:
	segmentSize		<Integer>		The number of bytes the kernel should allocate on load.
	segmentSizeInFile	<Integer>		How many of those bytes are actually represented in the file (remaining bytes are zeroed on load).
	loadAddress		<Integer>		Virtual address at which the segment should be loaded.
	entryAddress		<Integer>		Virtual address to jump to once the segment is loaded. This is the address of the machine code within the Mist initialization method.