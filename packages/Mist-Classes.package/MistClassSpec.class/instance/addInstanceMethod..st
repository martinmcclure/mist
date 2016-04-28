accessing
addInstanceMethod: aMethodSpec
	self checkMutability.
	classSpec addMethod: aMethodSpec