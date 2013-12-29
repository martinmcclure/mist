tests
testConsume1
	image startupMethod: (image compileSource: self class sourceConsume1).
	self
		runImage: image
		withInput: 'f'
		expectingOutput: ''
		expectingExitStatus: $f asInteger