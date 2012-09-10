instruction printing
printOperandsOn: stream
	"Comma-separated, no spaces"

	operands do: [ :op | op printOn: stream ] separatedBy: [ stream nextPut: $, ]