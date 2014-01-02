accessing
onlyLocation: aLocation
	areOtherStackFrameLocationsOK := false.
	acceptableLocations
		removeAll;
		add: aLocation.
	^ self