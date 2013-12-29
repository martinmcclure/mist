tests
test42
	image startupMethod: (image compileSource: self class sourceFortyTwo).
	self
		runImage: image
		withInput: ''
		expectingOutput: ''
		expectingExitStatus: 42