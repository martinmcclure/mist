x64-compiling-pass1
acceptableConsumptionLocationsForChildNum: index
	"My source variable will be assigned first. Its consumption location can be anywhere. The destination variable's consumption location cannot be the same as the consumption location of the source, and if the source's location is in memory, the destination must not be in memory."

	^ index = 1
		ifFalse: [ super acceptableConsumptionLocationsForChildNum: index ]
		ifTrue: [ 
			| sourceLoc prefs |
			sourceLoc := self source consumptionLocation.
			prefs := FogX64LocationPreferences new.
			sourceLoc isMemory
				ifTrue: [ prefs mustBeRegister ]
				ifFalse: [ prefs unacceptableRegisters: {sourceLoc} ].
			prefs ]