public
writeToStream: stream
	"For now, leave an unused mibibyte at end for stack. The stack may eventually be in its own segment."

	elfInfo
		segmentSizeInFile: objectSpace sizeInBytes;
		segmentSize: objectSpace sizeInBytes + (2 raisedToInteger: 20).
	objectSpace writeToStream: stream