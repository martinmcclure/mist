instruction printing
printOperandsOn: stream
	"Comma-separated, no spaces"

	operands do: [ :op | stream nextPutAll: op ] separatedBy: [ stream nextPut: $, ]