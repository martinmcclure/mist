little-endian writing
write2: value
	stream
		nextPut: value \\ 256;
		nextPut: value // 256