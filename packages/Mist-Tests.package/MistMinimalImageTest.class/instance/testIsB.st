tests
testIsB
	image startupMethod: (image compileSource: self class sourceIsB).
	self
		runImageWithInput: 'a' expectingOutput: 'F';
		runImageWithInput: 'b' expectingOutput: 'F';
		runImageWithInput: '~' expectingOutput: 'F';
		runImageWithInput: 'B' expectingOutput: 'T'