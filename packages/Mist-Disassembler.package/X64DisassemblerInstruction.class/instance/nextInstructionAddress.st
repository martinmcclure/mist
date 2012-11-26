accessing
nextInstructionAddress
	"Warning: This message will not give the correct answer until all bytes for the instruction have been processed.
	It is intended to be used during the instruction printing phase."

	^ startAddress + bytes size