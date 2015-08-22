tests
test42
	image startupMethod: (image compileSource: self class sourceFortyTwo).
	self
		runImageWithInput: ''
		expectingOutput: ''
		expectingExitStatus: 42