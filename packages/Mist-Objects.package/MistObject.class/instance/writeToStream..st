public
writeToStream: stream
	"Write my binary form to the given stream (usually an image file stream)"

	"For now (unless overridden) objects are just filled with zeroes."

	sizeInBytes timesRepeat: [ stream nextPut: 0 ]