A FogX64LocationPreferences specifies what temporary locations (registers or memory on stack) are acceptable as generation or consumption locations.

Instance Variables
	acceptableRegisters:		<IdentitySet of FogX64RegisterLocation>
	isStackFrameLocationOK:		<Boolean>

acceptableRegisters
	- Which registers are acceptable

isStackFrameLocationOK
	- If false, must be in one of the acceptableRegisters
