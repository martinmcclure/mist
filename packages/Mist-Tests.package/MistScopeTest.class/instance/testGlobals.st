tests
testGlobals
	"Test the global namespace, which binds only nil, true, and false."

	| scope binding |
	scope := MistGlobalScope singleton.
	binding := scope bindingFor: 'nil'.
	self assert: binding class equals: FogGlobalVariableBinding.
	self assert: binding name equals: 'nil'.
	self deny: binding isAssignable.
	self assert: binding scope equals: scope.
	binding := scope bindingFor: 'true'.
	self assert: binding class equals: FogGlobalVariableBinding.
	self assert: binding name equals: 'true'.
	binding := scope bindingFor: 'false'.
	self assert: binding class equals: FogGlobalVariableBinding.
	self assert: binding name equals: 'false'.
	self run: [ scope bindingFor: 'foo' ] expectingSignalOf: Error.
	self run: [ scope bind: 'foo' ] expectingSignalOf: Error