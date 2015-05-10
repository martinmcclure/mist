tests
testThreePlusFour
	| moduleSpec module |
	moduleSpec := self threePlusFourModuleSpec.
	module := moduleSpec compileIn: image.
	image startupMethod: (module definitionAt: 'SmallInteger') methodAt: #ThreePlusFour.
	self
		runImageWithInput: ''
		expectingOutput: ''
		expectingExitStatus: 7