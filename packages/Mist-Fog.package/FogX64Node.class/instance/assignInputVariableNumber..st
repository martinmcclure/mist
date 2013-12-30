x64-compiling-pass1
assignInputVariableNumber: i
	"If the child and parent can't agree, they go to binding arbitration. 
	No, not really. In that case, we require that the parent be picky enough to be requiring one specific register,
	and will error if it is more liberal. It's unclear at this point whether this will ever happen -- if it does we'll need
	a more complex algorithm."

self halt. "This method should not be used anymore. "
	"| childVar |
	childVar := children at: i.
	(childVar parentAcceptable isAcceptable: childVar restingLocation)
		ifTrue: [ childVar consumptionLocation: childVar restingLocation ]
		ifFalse: [ childVar consumptionLocation: childVar parentAcceptable uniqueScratchRegister ]"