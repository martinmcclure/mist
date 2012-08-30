initialize-release
initialize
	"Start out with everything OK, remove what isn't"

	acceptableRegisters := IdentitySet new.
	acceptableRegisters addAll: FogX64RegisterLocation allRegisters.
	isStackFrameLocationOK := true