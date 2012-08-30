portable-printing
labelForChildNumber: i
	| labels |
	labels := self childLabels.
	^ i > labels size
		ifTrue: [ '' ]
		ifFalse: [ labels at: i ]