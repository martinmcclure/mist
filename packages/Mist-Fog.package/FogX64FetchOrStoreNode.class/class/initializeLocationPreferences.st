class initialization
initializeLocationPreferences
	super initializeLocationPreferences.
	outputLocationPreferences mustBeRegister.
	(inputsLocationPreferences at: 1)
		mustBeRegister;
		unacceptableRegisters: {(FogX64Location r: #r13)}.
	(inputsLocationPreferences at: 2) mustBeRegister