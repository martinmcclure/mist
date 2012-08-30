initialize-release
initialize
	"FogX64Node initialize"

	Smalltalk at: #Fog put: FogX64Node.	"Will be specialized to architecture-specific subclass"
	self withAllSubclassesDo: [ :class | class initializeLocationPreferences ]