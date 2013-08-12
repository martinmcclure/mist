public
growBy8K
	"Create and answer an 8K FreeSpace object and put it just past the end of my memory space, making me 8K bigger. Only target-compiling object spaces can do this; in a running Mist system object spaces are fixed-size."

	| nextAddress newObject |
	nextAddress := startAddress + sizeInBytes.
	sizeInBytes := sizeInBytes + 8192.
	newObject := MistFreeObject withAddress: nextAddress size: 8192.
	objects add: newObject.
	^ newObject