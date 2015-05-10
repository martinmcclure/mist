tests
testPrint7
	image startupMethod: (image compileSource: self class sourcePrint7).
	self runImageWithInput: '' expectingOutput: '7'