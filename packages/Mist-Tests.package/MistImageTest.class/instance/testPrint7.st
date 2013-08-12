tests
testPrint7
	image startMethod: (image compile: self class sourcePrint7).
	self runImage: image withInput: '' expectingOutput: '7'