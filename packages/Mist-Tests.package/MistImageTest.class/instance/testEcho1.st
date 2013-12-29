tests
testEcho1
	image startupMethod: (image compileSource: self class sourceEcho1).
	self runImage: image withInput: 'a' expectingOutput: 'a'