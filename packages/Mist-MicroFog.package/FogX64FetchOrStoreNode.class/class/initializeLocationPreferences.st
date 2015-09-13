class initialization
initializeLocationPreferences
	super initializeLocationPreferences.
	outputLocationPreferences mustBeRegister.
	(inputsLocationPreferences at: 1)
		mustBeRegister;
		unacceptableLocations: {(FogX64Location r: #r13)}.
	(inputsLocationPreferences at: 2) mustBeRegister