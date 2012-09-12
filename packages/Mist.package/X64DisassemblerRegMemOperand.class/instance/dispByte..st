instruction byte handling
dispByte: byte
	"Displacement bytes are little-endian, so each byte received is of greater significance than all received so far.
	Displacments are also signed, twos complement, but here we just accumulate the value as if unsigned and correct at print time."

	displacement := displacement + (byte bitShift: dispBytesSoFar * 8).
	dispBytesSoFar := dispBytesSoFar + 1