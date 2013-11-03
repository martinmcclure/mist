support
execute: aFile withStdin: stdin
	| process stderr stdout fullFilePath |
	fullFilePath := (aFile asFileReference) fullName.
	OSProcess waitForCommand: 'chmod +x ', fullFilePath.
	stdout := StandardFileStream forceNewFileNamed: aFile, '.stdout'.
	stderr := StandardFileStream forceNewFileNamed: aFile, '.stderr'.
	process := OSProcess thisOSProcess
		forkAndExec: (aFile asFileReference) fullName
		arguments: #()
		environment: (Dictionary newFrom: {'HOME' -> '/tmp'})
		descriptors: {stdin. stdout. stderr}.
	self waitForProcess: process.
	^ process