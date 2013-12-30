assigning
locationAvoiding: clobbered compiler: compiler
	"Choose a location for myself, not one of the given clobbered set. In decreasing order of preference, choose a non-clobbered  location that is acceptable to:
	* Both child and parent
	* Child
	* Parent
	* Neither"
self halt. "This method should not be used anymore."
	"isDummy
		ifTrue: [ ^ FogX64Location noLocation ].
	{(self bothAcceptable).
	childAcceptable.
	parentAcceptable}
		do: [ :prefs | 
			| loc |
			loc := compiler locationAcceptableTo: prefs avoiding: clobbered.
			loc isAssignable
				ifTrue: [ ^ loc ] ].
	^ clobbered nextAvailableLocation"