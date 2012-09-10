instruction byte handling
immediateByte: byte
	"Immediate bytes are little-endian, so each byte received is of greater significance than all received so far."

	immediateValue := immediateValue + (byte bitShift: bytesSoFar * 8).
	bytesSoFar := bytesSoFar + 1