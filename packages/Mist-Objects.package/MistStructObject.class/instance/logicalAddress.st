public
logicalAddress
	"A struct object has some indexed bytes first, followed by the usual instance variables, starting with the class pointer which must be the address of 'self' in order to receive messages."

	^ address + theBytes size