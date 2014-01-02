A FogX64LocationPreferences specifies what temporary locations (registers or memory on stack) are acceptable as generation or consumption locations.

Instance Variables
	acceptableLocations:		<Set of FogX64SpecificLocation>
	areOtherStackFrameLocationsOK:		<Boolean>

acceptableLocations
	- These locations are specifically permitted. Any register locations that are not included here are forbidden.

areOtherStackFrameLocationsOK
	- If false, the acceptableLocations are the *only* locations that are acceptable. If true, then stack frame locations that are not listed, including not-yet-allocated stack frame locations, are also acceptable.
