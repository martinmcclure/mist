accessing
mustBeRegister
	areOtherStackFrameLocationsOK := false.
	acceptableLocations removeAll: (acceptableLocations select: [ :loc | loc isMemory ])