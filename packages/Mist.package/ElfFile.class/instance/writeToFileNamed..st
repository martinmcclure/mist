public
writeToFileNamed: name
	stream := FileStream newFileNamed: name.
	stream binary.
	[ self write ] ensure: [ stream close ]