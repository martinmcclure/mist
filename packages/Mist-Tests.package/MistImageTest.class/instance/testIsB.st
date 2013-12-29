tests
testIsB
	image startupMethod: (image compileSource: self class sourceIsB).
	self
		runImage: image withInput: 'a' expectingOutput: 'F';
		runImage: image withInput: 'b' expectingOutput: 'F';
		runImage: image withInput: '~' expectingOutput: 'F';
		runImage: image withInput: 'B' expectingOutput: 'T'