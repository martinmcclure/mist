private
compile
	"First, syntax."

	fogRoot := self parse.
	fogRoot isPrimitive
		ifTrue: [ self compilePrimitive ]
		ifFalse: [ self compileMist ]