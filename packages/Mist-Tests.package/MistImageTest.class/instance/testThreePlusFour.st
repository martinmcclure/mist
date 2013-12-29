tests
testThreePlusFour
	image startupMethod: (image compileSource: self class sourceThreePlusFour).
	self
		runImage: image
		withInput: ''
		expectingOutput: ''
		expectingExitStatus: 7