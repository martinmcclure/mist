A X64DisassemblerDisp32Operand is a 32-bit RIP-relative signed displacement, not associated with a SIB byte. 
In 64-bit mode (the only mode used by Mist) this appears in only JMP and Jcc instructions.

Instance Variables:
	bytesSoFar	<Integer> How many of the four displacement bytes have been received so far
	displacementValue	<Integer> The accumulated value. This will be unsigned until the last byte is received, at which point it may be discovered that it should be negative and adjusted.