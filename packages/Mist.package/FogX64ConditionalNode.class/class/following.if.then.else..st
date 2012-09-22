instance creation
following: unconditionalNode if: flagSymbol then: conditionMetNode else: conditionNotMetNode
	"FlagSymbol defines the flags and flag sense to form a condition. 
	First evaluate unconditionalNode, which is expected to set or clear flags of interest.
	Then evaluate either conditionMetNode or conditionNotMetNode."

	| inst |
	inst := self new.
	inst
		flagSymbol: flagSymbol;
		children:
				{unconditionalNode.
					conditionMetNode.
					conditionNotMetNode}.
	^ inst