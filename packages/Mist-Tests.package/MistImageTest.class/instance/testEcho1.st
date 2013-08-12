tests
testEcho1
	image startMethod: (image compile: self class sourceEcho1).
	self runImage: image withInput: 'a' expectingOutput: 'a'