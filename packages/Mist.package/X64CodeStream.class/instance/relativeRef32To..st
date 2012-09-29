helpers
relativeRef32To: labelId
	| label |
	label := self labelAt: labelId.
	label isResolved
		ifTrue: [ output write4s: self currentAddress + 4 - label address ]
		ifFalse: [ 
			label addReference: (X64CodeUnresolvedRelative32Reference code: output address: self currentAddress).
			output write4: 0 ]