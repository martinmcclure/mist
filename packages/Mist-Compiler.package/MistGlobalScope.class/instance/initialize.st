as yet unclassified
initialize
	super initialize.
	isMutable := true.
	self
		bind: 'nil';
		bind: 'true';
		bind: 'false'.
	isMutable := false