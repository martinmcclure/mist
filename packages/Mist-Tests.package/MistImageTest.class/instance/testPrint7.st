tests
testPrint7
	image startupMethod: (image compileSource: self class sourcePrint7).
	self runImage: image withInput: '' expectingOutput: '7'