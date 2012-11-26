instruction printing
printMnemonicOn: stream
	"Let's assume no more than 8 characters for mnemonic"

	stream
		nextPutAll: mnemonic;
		space: 8 - mnemonic size