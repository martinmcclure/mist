support
compile: program andRun: filename stdin: stdin
	| process |
	self compile: program andWriteTo: filename.
	process := self execute: filename withStdin: stdin.
	^ process