grammar
byteLiteral
	^ super byteLiteral map: [ :left :numbers :right | ByteArray withAll: numbers ]