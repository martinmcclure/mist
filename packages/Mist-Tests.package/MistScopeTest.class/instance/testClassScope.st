tests
testClassScope
	"Test the class scope, which binds the instance variable names."

	| scope binding |
	scope := MistClassScope withEnclosingScope: MistGlobalScope singleton.
	self assert: scope class equals: MistClassScope.
	binding := scope bindingFor: 'nil'.
	self assert: binding class equals: FogGlobalVariableBinding.
	self assert: binding name equals: 'nil'.
	self deny: binding isAssignable.
	self assert: binding scope equals: MistGlobalScope singleton.
	self run: [ scope bindingFor: 'foo' ] expectingSignalOf: Error.
	scope bind: 'ivar1'.
	binding := scope bindingFor: 'ivar1'.
	self assert: binding class equals: FogInstanceVariableBinding.
	self assert: binding name equals: 'ivar1'.
	self assert: binding isAssignable.
	self run: [ scope bind: 'nil' ] expectingSignalOf: Error