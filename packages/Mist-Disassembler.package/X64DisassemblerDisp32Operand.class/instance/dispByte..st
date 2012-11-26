instruction byte handling
dispByte: byte
	"Displacement bytes are little-endian, so each byte received is of greater significance than all received so far."

	displacementValue := displacementValue + (byte bitShift: bytesSoFar * 8).
	bytesSoFar := bytesSoFar + 1.	
	"If we've received the last byte, we can now convert value from unsigned to signed."
	(bytesSoFar = 4 and: [ displacementValue > 16r7FFFFFFF ])
		ifTrue: [ displacementValue := displacementValue - 16r100000000 ]