tests
testConsume1
	image startupMethod: (image compileSource: self class sourceConsume1).
	self
		runImageWithInput: 'f'
		expectingOutput: ''
		expectingExitStatus: $f asInteger