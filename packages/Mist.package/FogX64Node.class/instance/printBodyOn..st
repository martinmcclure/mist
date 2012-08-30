portable-printing
printBodyOn: aStream
	aStream
		printLine: [ :s | 
			s
				nextPutAll: self label;
				space ].
	aStream
		printIndented: [ :s | 
			1 to: children size do: [ :i | 
				s label: (self labelForChildNumber: i).
				(children at: i) child printBodyOn: s ] ]