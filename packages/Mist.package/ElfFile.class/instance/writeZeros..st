little-endian writing
writeZeros: numberToWrite

	numberToWrite timesRepeat: [stream nextPut: 0]