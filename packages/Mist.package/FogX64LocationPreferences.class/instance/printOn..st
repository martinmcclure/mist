printing
printOn: aStream
	aStream
		nextPutAll: 'LocPrefs{';
		nextPutAll:
				(isStackFrameLocationOK
						ifTrue: [ 'Stack ' ]
						ifFalse: [ 'No Stack ' ]).
	acceptableRegisters printOn: aStream.
	aStream nextPutAll: '}'