public
atAllFrom: start to: stop by: step putOperandTypes: operandTypeArray
	self
		from: start
		to: stop
		by: step
		do: [ :action | action operandTypes: operandTypeArray ]