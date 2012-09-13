support
waitForProcess: aProcess
	| delay timestamp |
	delay := 100 milliSeconds asDelay.
	timestamp := Time millisecondClockValue.
	[aProcess isComplete and: [(Time millisecondsSince: timestamp) < 5000]] whileFalse: [
		 delay wait.
	]
