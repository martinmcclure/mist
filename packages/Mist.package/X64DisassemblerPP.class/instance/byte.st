rules-instruction support
byte
	^ #any asParser
		==> [ :aByte | 
			currentAddress := currentAddress + 1.
			aByte ]