support
execute: aFile withStdin: stdin
	| process stderr stdout |
	OSProcess waitForCommand: 'chmod +x ', aFile.
	stdout := StandardFileStream forceNewFileNamed: aFile, '.stdout'.
	stderr := StandardFileStream forceNewFileNamed: aFile, '.stderr'.
	process := OSProcess thisOSProcess
		forkAndExec: (FileDirectory default / aFile) fullName
		arguments: #()
		environment: (Dictionary newFrom: {'HOME' -> '/tmp'})
		descriptors: {stdin. stdout. stderr}.
	^ process