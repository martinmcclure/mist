printing
printSignedDisplacementOn: stream
	"Taking into account the number of displacement bytes received, print displacement on the stream as a signed hexadecimal value.
	Displacements are either 8-bit or 32-bit."

	| sign absval largestPositive negation |
	dispBytesSoFar = 1
		ifTrue: [ 
			largestPositive := 16r7F.
			negation := 16r100 ].
	dispBytesSoFar = 4
		ifTrue: [ 
			largestPositive := 16r7FFFFFFF.
			negation := 16r100000000 ].
	displacement <= largestPositive
		ifTrue: [ 
			sign := $+.
			absval := displacement ]
		ifFalse: [ 
			sign := $-.
			absval := (displacement - negation) abs ].
	stream
		nextPut: sign;
		nextPutAll: '0x'.
	absval printOn: stream base: 16