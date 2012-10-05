tests
testConsume1
	"Read one character from stdin.. First, take stdin's tty out of canonical mode with an ioctl. After character is read, restore canonical mode.
	Exit code is the numerical value of the character read.."

	| program process stdin |
	filename := 'testConsume1'.
	program := FogTests consume1.
	stdin := StandardFileStream forceNewFileNamed: filename , '.stdin'.
	stdin
		nextPutAll: 'f';
		flush.
	process := self compileAndRun: program stdin: stdin.
	self assert: process exitStatus \\ 255 = $f asInteger