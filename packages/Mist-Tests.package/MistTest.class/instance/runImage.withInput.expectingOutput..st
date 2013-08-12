running
runImage: image withInput: providedString expectingOutput: expectedString
	self
		runImage: image
		withInput: providedString
		expectingOutput: expectedString
		expectingExitStatus: 0