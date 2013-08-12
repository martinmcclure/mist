accessing
machineCodeSize: numberOfBytes
	"The physical size of a method depends on the number of bytes of machine code, so that is also set here.
	A MistMethod contains XXXX instance variables, followed by the bytes of machine code.
	The instVars are at this point assumed to be (in some order):
	* class
	* identityHash
	* isGcMarked
	* source
	* fog
	* machineCodeSize
	followed by the machine code bytes.
	
	The 6 named instvars take 8 bytes each, for 48 bytes total."

	| usedSize power |
	machineCodeSize := numberOfBytes.
	usedSize := machineCodeSize + 48.
	power := (usedSize log: 2) ceiling.
	power > 13
		ifTrue: [ self error: 'Methods of more than 8192 bytes physicalSize are not yet supported.' ].
	sizeInBytes := 2 raisedToInteger: power