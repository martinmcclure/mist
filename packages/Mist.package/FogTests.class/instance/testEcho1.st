tests
testEcho1
	| program process stdin |
	program := FogTests echo1.
	stdin := StandardFileStream forceNewFileNamed: 'testEcho1.stdin'.
	stdin
		nextPutAll: 'a';
		flush.
	process := self compileAndRun: program stdin: stdin.
	self
		assert:
			(process initialStdOut
				reset;
				upToEnd) = 'a'