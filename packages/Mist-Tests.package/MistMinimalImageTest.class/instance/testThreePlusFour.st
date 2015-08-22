tests
testThreePlusFour
	image startupMethod: (image compileSource: self class sourceThreePlusFour).
	self
		runImageWithInput: ''
		expectingOutput: ''
		expectingExitStatus: 7