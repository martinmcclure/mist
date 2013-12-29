accessing
startupMethod: aMethod
	startupMethod := aMethod.
	initializationMethod := self initializationMethodCalling: startupMethod.
	elfInfo entryAddress: initializationMethod entryAddress