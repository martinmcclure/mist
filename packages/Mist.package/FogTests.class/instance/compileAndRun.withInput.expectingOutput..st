running
compileAndRun: program withInput: providedString expectingOutput: expectedString
	| stdin process |
	filename := thisContext sender selector asString.
	stdin := StandardFileStream forceNewFileNamed: filename , '.stdin'.
	stdin
		nextPutAll: providedString;
		flush.
	process := self compile: program andRun: filename stdin: stdin.
	self
		assert:
			(process initialStdOut
				reset;
				upToEnd)
		equals: expectedString.
	self assert: process exitStatus \\ 256 equals: 0