as yet unclassified
byte: aByte
	bBit := (aByte bitAnd: 1) ~= 0.
	rBit := (aByte bitAnd: 4) ~= 0.
	wBit := (aByte bitAnd: 8) ~= 0.
	xBit := (aByte bitAnd: 2) ~= 0