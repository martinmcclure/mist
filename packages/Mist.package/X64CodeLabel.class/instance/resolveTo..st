public
resolveTo: addressInteger
	self isResolved
		ifTrue: [ self error: 'Attempt to resolve already-resolved label' ].
	address := addressInteger.
	unresolvedReferences do: [ :each | each resolveTo: address ].
	unresolvedReferences := #resolved