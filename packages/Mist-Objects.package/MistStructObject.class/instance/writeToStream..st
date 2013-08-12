public
writeToStream: stream
	stream nextPutAll: theBytes.
	sizeInBytes - theBytes size timesRepeat: [ stream nextPut: 0 ]