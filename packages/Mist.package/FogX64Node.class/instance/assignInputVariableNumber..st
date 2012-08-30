x64-compiling-pass1
assignInputVariableNumber: i
	"This is not quite right. There can be more inputs than we have scratch registers. Need to prove that scratch registers won't ever be needed on input or make this logic reconcile the set of resting locations with acceptable consumption locations."
	| childVar |
	childVar := children at: i.
	(childVar parentAcceptable isAcceptable: childVar restingLocation)
		ifTrue: [ childVar consumptionLocation: childVar restingLocation ]
		ifFalse: [self halt: 'This is the problematic case.'. childVar consumptionLocation: (self scratchInputLocationNumber: i) ]