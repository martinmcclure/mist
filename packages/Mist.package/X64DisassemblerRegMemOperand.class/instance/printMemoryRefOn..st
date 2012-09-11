printing
printMemoryRefOn: stream
	expectsSIB
		ifTrue: [ self printSibRefOn: stream ]
		ifFalse: [ self printNonSibRefOn: stream ]