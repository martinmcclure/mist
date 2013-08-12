image writing
writeToStream: stream
	48 timesRepeat: [ stream nextPut: 0 ].
	stream nextPutAll: machineCode.
	sizeInBytes - 48 - machineCodeSize timesRepeat: [ stream nextPut: 0 ]