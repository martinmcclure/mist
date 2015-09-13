initialize-release
initializeLocationPreferences
	| l inputLocations |
	super initializeLocationPreferences.
	l := FogX64Location.
	inputLocations := {(l r: #rdi).
	(l r: #rsi).
	(l r: #rdx).
	(l r: #r10).
	(l r: #r8).
	(l r: #r9)}.
	outputLocationPreferences onlyRegister: (FogX64Location r: #rax).
	1 to: 6 do: [ :i | (inputsLocationPreferences at: i) onlyRegister: (inputLocations at: i) ]