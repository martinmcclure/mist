x64-compiling-pass1
assignOutputVariableAvoiding: aSiblingClobbered
	"Assign my output variable, if not dummy, to a generation location and a resting location, each of which is not siblingClobbered. Then, add those locations to siblingClobbered. 
	Use a location that is acceptable to both me and my parent, if possible. If that's not possible, use a location that is acceptable to me. If all locations acceptable to me are clobbered, use a scratch register for the generation location and the first available (non-clobbered) location for the resting location and I'll emit an extra move instruction in pass 2 to make up for the discrepancy."

	"If I have an exit node, it has already picked output variable locations, so use those."

	loopExitNode == #infinite
		ifTrue: [ super assignOutputVariableAvoiding: aSiblingClobbered ]
		ifFalse: [ 
			parent
				generationLocation: loopExitNode generationLocation;
				restingLocation: loopExitNode restingLocation	
					"LoopExitNode should have already registered this location as used and clobbered." ]