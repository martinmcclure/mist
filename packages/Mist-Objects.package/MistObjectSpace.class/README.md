A MistObjectSpace keeps track of the objects in a contiguous chunk of memory. Its primary responsibility in a running Mist system is to send gcSweep to all objects. In target compilation (the case here in Pharo) it writes objects out to an image file in address order, and knows how large the image is going to be so that the ELF header can allocate the correct amount of memory at the correct address.

Instance Variables:
	startAddress	<Integer> The address that I will be in the running Mist system.
	sizeInBytes	<Integer> 	For target compiling (the only kind from Pharo) this is variable and grows as more objects are allocated. Always a multiple of 8192. In a running Mist system, ObjectSpaces are fixed size but there can be more than one.
	objects	<SortedCollection of MistObject> Sorted by address of the object, this should include 