support
writeImage: image toFileNamed: filename andRunWithStdin: stdin
	| process |
	image writeToFileNamed: filename.
	process := self execute: filename withStdin: stdin.
	^ process