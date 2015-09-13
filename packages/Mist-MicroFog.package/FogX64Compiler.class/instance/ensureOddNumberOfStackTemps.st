locations
ensureOddNumberOfStackTemps
	"Per x64 ABI, the stack pointer must be 16-byte aligned before any call. This means that upon entry to a method, it will *not* be 16-byte aligned.
	The first thing a method does is adjust the stack pointer to make room for any stack temporaries. If we ensure that the number of stack temps 
	is odd, this will leave rsp 16-byte aligned for any calls (or message sends, which are calls) that are done during the method. This can leave 8 bytes 
	on the stack unused.
	
	This message should be sent only after all actual variables have had their locations allocated, i.e. at the end of compiler pass 1."

	stackTempsUsed even
		ifTrue: [ stackTempsUsed := stackTempsUsed + 1 ]