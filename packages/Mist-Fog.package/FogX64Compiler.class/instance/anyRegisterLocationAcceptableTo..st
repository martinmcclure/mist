locations
anyRegisterLocationAcceptableTo: prefs
	" Answer the most desirable register location, that is acceptable to the given location preferences. 
	Scratch registers are eligible, and in fact preferred here. If there is no such register, answer nil."

	^ allRegisters detect: [ :reg | prefs isAcceptable: reg ] ifNone: [ nil ]