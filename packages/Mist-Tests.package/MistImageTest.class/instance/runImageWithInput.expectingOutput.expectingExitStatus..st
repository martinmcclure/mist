running
runImageWithInput: providedString expectingOutput: expectedString expectingExitStatus: expectedExitStatus
	| stdin process |
	stdin := StandardFileStream forceNewFileNamed: testSelector , '.stdin'.
	stdin
		nextPutAll: providedString;
		flush.
	process := self writeImageToFileNamed: testSelector andRunWithStdin: stdin.
	self assert: process exitStatus // 256 + (process exitStatus \\ 256) equals: expectedExitStatus.
	self
		assert:
			(process initialStdOut
				reset;
				upToEnd)
		equals: expectedString