printing
printOn: aStream
	aStream
		nextPutAll: 'LocPrefs{';
		nextPutAll:
				(areOtherStackFrameLocationsOK
						ifTrue: [ 'Other Stack OK ' ]
						ifFalse: [ 'No Stack ' ]).
	acceptableLocations printOn: aStream.
	aStream nextPutAll: '}'