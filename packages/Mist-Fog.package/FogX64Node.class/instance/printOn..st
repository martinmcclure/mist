portable-printing
printOn: aStream
	| stream |
	stream := FogIndentingStream on: aStream.
	stream printIndented: [ :sameStream | self printBodyOn: sameStream ]