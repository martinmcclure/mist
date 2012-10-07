helpers
relativeRef32To: labelId
	| label |
	label := self labelAt: labelId.
	label isResolved
		ifTrue: [ output write4s: label address - (self currentAddress + 4) ]
		ifFalse: [ 
			label addReference: (X64CodeUnresolvedRelative32Reference code: output address: self currentAddress).
			output write4: 0 ]