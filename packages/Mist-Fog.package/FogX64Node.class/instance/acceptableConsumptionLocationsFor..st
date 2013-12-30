x64-compiling-pass1
acceptableConsumptionLocationsFor: variable
	"Most nodes just use their class defaults"

	| i |
	i := children indexOf: variable.
	^ self class inputsLocationPreferencesAt: i