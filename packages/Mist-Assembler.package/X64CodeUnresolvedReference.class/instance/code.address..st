private
code: byteStream address: machineAddress
	codeObject := byteStream.
	referenceOffset := codeObject position.
	referenceAddress := machineAddress.
	^ self