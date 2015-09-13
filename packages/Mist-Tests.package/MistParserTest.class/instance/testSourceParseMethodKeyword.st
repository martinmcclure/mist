as yet unclassified
testSourceParseMethodKeyword
	| parser result |
	parser := 
	MistParser new.
	result := parser parse: '
foo: aFoo bar: aBar
	"A test method with a keyword selector and just about everything else except blocks.
	Assumes instvars inst1 and inst2 exist in the context, and other variable AClass exists."
	| temp1 temp2 |
	temp1 := temp2 := inst1 := aBar ceaseToExist.
	temp1 := AClass new: 32.
	temp2 := ''stream literal''.
	inst1 := temp1 fnoodle: $Q.
	inst2 := inst1 fnord: #( #[ 65 66 67 ] #someSymbol nil true false ).
	aFoo + (aBar resumeExistenceWith: 12 with: 3.0 with: 16r6e42).
	"Implied return self."
	'.
	"Make this thing fail for now for debugging."
	self assert: result equals: nil.