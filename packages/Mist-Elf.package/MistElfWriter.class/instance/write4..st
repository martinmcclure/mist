little-endian writing
write4: value
	| remainingBytes |
	remainingBytes := value.
	4
		timesRepeat: [ 
			stream nextPut: remainingBytes \\ 256.
			remainingBytes := remainingBytes // 256 ]