writing
printLine: aBlock
	level timesRepeat: [ stream tab ].
	label size > 0
		ifTrue: [ 
			stream
				nextPut: $(;
				nextPutAll: label;
				nextPutAll: ') '.
			label := '' ].
	aBlock value: stream.
	stream
		space;
		cr