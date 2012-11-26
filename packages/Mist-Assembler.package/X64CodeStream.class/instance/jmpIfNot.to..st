instructions
jmpIfNot: flagSymbol  to: labelId

	"If the condition specified by flagSymbol is *not* true, jump to the label with the given ID object."
	
	| conditionCode |
	"Xor-ing with 1 flips the bottom bit, negating the sense"
	conditionCode :=  (ConditionCodes at: flagSymbol) bitXor: 1.
	self jcc: conditionCode to: labelId