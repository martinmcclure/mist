printing
printOn: aStream

	aStream nextPutAll:   'LocPrefs{'.
	isStackFrameLocationOK printOn: aStream.
	acceptableRegisters printOn: aStream.  
	aStream nextPutAll: '}'  