assigning
intersection: otherPrefs
	| result |
	result := self class new.
	result areOtherStackFrameLocationsOK: (areOtherStackFrameLocationsOK & otherPrefs areOtherStackFrameLocationsOK).
	result acceptableLocations: (acceptableLocations intersection: otherPrefs acceptableLocations).
	^result