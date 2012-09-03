instruction disassembly
immediateByte: byte
	bytes add: byte.
	immediateValue := immediateValue + (byte bitShift: immediateBytesReceived * 8).
	immediateBytesReceived := immediateBytesReceived + 1.
	immediateBytesReceived = immediateSize
		ifTrue: [ 
			| stringValue thisByte remainingBytes |
			stringValue := ''.
			remainingBytes := immediateValue.
			immediateSize
				timesRepeat: [ 
					thisByte := remainingBytes bitAnd: 16rFF.
					remainingBytes := remainingBytes bitShift: -8.
					stringValue := (thisByte printStringBase: 16 length: 2 padded: true) , stringValue ].
			operands add: '0x' , stringValue ]