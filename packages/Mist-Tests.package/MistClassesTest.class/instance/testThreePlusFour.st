tests
testThreePlusFour
	| moduleSpec module |
"Disable this broken test until we're closer to getting it to work."
true ifTrue: [  
	moduleSpec := self threePlusFourModuleSpec.
	module := moduleSpec compileIn: image.
	image startupMethod: (module definitionAt: 'SmallInteger') methodAt: #ThreePlusFour.
	self
		runImageWithInput: ''
		expectingOutput: ''
		expectingExitStatus: 7]