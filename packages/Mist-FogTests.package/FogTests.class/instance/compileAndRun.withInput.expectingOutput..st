running
compileAndRun: program withInput: providedString expectingOutput: expectedString
	| stdin process |
	stdin := StandardFileStream forceNewFileNamed: testSelector , '.stdin'.
	stdin
		nextPutAll: providedString;
		flush.
	process := self compile: program andRun: testSelector stdin: stdin.
	self
		assert:
			(process initialStdOut
				reset;
				upToEnd)
		equals: expectedString.
	self assert: process exitStatus \\ 256 equals: 0