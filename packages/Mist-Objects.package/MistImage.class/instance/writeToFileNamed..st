public
writeToFileNamed: nameString
	| stream |
	stream := FileStream forceNewFileNamed: nameString.
	stream binary.
	[ self writeToStream: stream ]
		ensure: [ stream close ]