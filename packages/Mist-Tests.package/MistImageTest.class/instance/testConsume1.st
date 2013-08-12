tests
testConsume1
	image startMethod: (image compile: self class sourceConsume1).
	self
		runImage: image
		withInput: 'f'
		expectingOutput: ''
		expectingExitStatus: $f asInteger