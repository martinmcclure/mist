testing
isAcceptable: loc
	loc isNoLocation
		ifTrue: [ ^ true ].
	loc isRegister
		ifTrue: [ ^ acceptableRegisters includes: loc ].
	loc isMemory
		ifTrue: [ ^ isStackFrameLocationOK ]