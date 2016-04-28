accessing
addClassMethod: aMethodSpec
	self checkMutability.
	metaclassSpec addMethod: aMethodSpec