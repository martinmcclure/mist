initialize-release
initialize
	"FogX64SysCallNode initialize"

	super initialize.
	NamesToNumbers := IdentityDictionary new.
	NumbersToNames := IdentityDictionary new.
	self initializeNamesToNumbers.
	NamesToNumbers keysAndValuesDo: [ :nam :num | NumbersToNames at: num put: nam ]