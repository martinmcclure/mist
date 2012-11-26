public
writeToFileNamed: name
	stream := FileStream forceNewFileNamed: name.
	stream binary.
	[ self write ] ensure: [ stream close ]