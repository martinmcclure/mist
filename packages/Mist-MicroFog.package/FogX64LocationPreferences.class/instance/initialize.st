initialize-release
initialize
	"Start out with everything OK, remove what isn't"

	acceptableLocations := Set new.
	acceptableLocations addAll: FogX64RegisterLocation allRegisters.
	areOtherStackFrameLocationsOK := true