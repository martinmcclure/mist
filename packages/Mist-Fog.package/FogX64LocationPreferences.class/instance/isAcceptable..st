testing
isAcceptable: loc
	^ (loc isNoLocation or: [ acceptableLocations includes: loc ])
		ifTrue: [ true ]
		ifFalse: [ loc isMemory and: [ areOtherStackFrameLocationsOK ] ]