tests
testEcho1
	image startupMethod: (image compileSource: self class sourceEcho1).
	self runImageWithInput: 'a' expectingOutput: 'a'