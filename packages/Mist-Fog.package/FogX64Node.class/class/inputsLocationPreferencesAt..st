accessing
inputsLocationPreferencesAt: childNum
	| iHaveThisMany |
	iHaveThisMany := inputsLocationPreferences size.
	^ inputsLocationPreferences
		at:
			(childNum > iHaveThisMany
				ifTrue: [ 1 ]
				ifFalse: [ childNum ])