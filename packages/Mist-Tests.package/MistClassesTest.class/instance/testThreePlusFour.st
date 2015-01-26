tests
testThreePlusFour
	| moduleSpec module |
	moduleSpec := self threePlusFourModuleSpec.
	module := moduleSpec compileIn: image.
	image startupMethod: (module definitionAt: 'SmallInteger') methodAt: #ThreePlusFour.
	self
		runImage: image
		withInput: ''
		expectingOutput: ''
		expectingExitStatus: 7