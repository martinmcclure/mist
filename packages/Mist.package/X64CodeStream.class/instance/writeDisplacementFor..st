helpers
writeDisplacementFor: aLocation
	"Modes 0 and 3 have no displacement, so do nothing"

	| mode |
	mode := aLocation mode.
	mode = 2
		ifTrue: [ output write4s: aLocation offset ]
		ifFalse: [ 
			mode = 1
				ifTrue: [ self error: '8-bit displacement not yet supported' ] ]	"32-bit displacement"