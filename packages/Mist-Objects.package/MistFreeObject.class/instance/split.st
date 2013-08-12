public
split
	"If I am big enough, split myself into two objects of half my size, reducing my size and answering the new object that was my second half.
	The new object is *not* added to the object space -- the sender must do that."

	sizeInBytes < 128
		ifTrue: [ self error: 'Attempt to split minimal-sized object' ].
	sizeInBytes := sizeInBytes / 2.
	^ MistFreeObject withAddress: address + sizeInBytes size: sizeInBytes