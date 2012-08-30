assigning
intersection: otherPrefs
	| result |
	result := self class new.
	result isStackFrameLocationOK: (isStackFrameLocationOK & otherPrefs isStackFrameLocationOK).
	result acceptableRegisters: (acceptableRegisters intersection: otherPrefs acceptableRegisters).
	^result