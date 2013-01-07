instance creation
value: integer
	"If negative, the value will be considered to be signed, otherwise unsigned. Therefore, the valid range is [-2^63 .. 2^64)"

	| inst |
	inst := self new.
	inst value: integer.
	^ inst