little-endian writing
write8: value
	| remainingBytes |
	remainingBytes := value.
	8
		timesRepeat: [ 
			stream nextPut: remainingBytes \\ 256.
			remainingBytes := remainingBytes // 256 ]