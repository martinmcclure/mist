initialize-release
initialize
	objectSpace := MistObjectSpace new.
	objectManager := MistObjectManager new objectSpace: objectSpace.
	elfInfo := MistElfInfo newInImage: self.
	elfInfo loadAddress: objectSpace startAddress