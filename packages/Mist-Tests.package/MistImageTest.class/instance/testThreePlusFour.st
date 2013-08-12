tests
testThreePlusFour
	image startMethod: (image compile: self class sourceThreePlusFour).
	self
		runImage: image
		withInput: ''
		expectingOutput: ''
		expectingExitStatus: 7