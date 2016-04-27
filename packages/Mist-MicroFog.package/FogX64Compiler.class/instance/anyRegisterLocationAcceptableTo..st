locations
anyRegisterLocationAcceptableTo: prefs
	" Answer the most desirable register location, that is acceptable to the given location preferences. 
	If there is no such register, answer nil."

	^ assignableRegisters detect: [ :reg | prefs isAcceptable: reg ] ifNone: [ nil ]