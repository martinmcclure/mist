initialize-release
initializeLocationPreferences
	super initializeLocationPreferences.
	(inputsLocationPreferences at: 1) onlyRegister: (FogX64Location r: #rax)