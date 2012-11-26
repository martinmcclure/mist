as yet unclassified
resolveTo: addressInteger
	| displacement savedPosition |
	"Displacement is relative to the byte after the four-byte reference."
	displacement := addressInteger - (referenceAddress + 4).	

	"Convert displacement to twos complement"
	displacement < 0
		ifTrue: [ displacement := displacement + 16r100000000 ].
	savedPosition := codeObject position.
	codeObject position: referenceOffset.
	4
		timesRepeat: [ 
			codeObject nextPut: (displacement bitAnd: 16rFF).
			displacement := displacement bitShift: -8 ].
	codeObject position: savedPosition.
	displacement = 0
		ifFalse: [ self error: 'displacement larger than 32-bit signed range' ]