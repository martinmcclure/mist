instruction printing
printAddressOn: stream
	"Address is columns 1-12, plus a colon"
	startAddress printOn: stream base: 16 length: 12 padded: true.
	stream nextPutAll: ': '