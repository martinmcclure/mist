tests
test42
	image startMethod: (image compile: self class sourceFortyTwo).
	self
		runImage: image
		withInput: ''
		expectingOutput: ''
		expectingExitStatus: 42