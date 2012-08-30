little-endian writing
write2: value
	self
		nextPut: value \\ 256;
		nextPut: value // 256