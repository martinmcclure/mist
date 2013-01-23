instruction printing
printOperandsOn: stream
	"Comma-separated, no spaces"

	| printableOperands |
	printableOperands := operands select: [ :each | each isPrintable ].
	printableOperands do: [ :op | op printOn: stream ] separatedBy: [ stream nextPut: $, ]