instruction printing
printLineOn: stream
	self
		printAddressOn: stream;
		printBytesOn: stream;
		printMnemonicOn: stream;
		printOperandsOn: stream.
	stream cr