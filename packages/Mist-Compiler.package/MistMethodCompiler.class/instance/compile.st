private
compile
	"First, syntax."

	fogRoot := self parse.
	fogRoot isPrimitive
		ifTrue: [ self compilePrimitive ]
		ifFalse: [ self compileMist ]	"At this point, we have a method in the image. 
	Probably need to add the method to a methodDictionary somewhere,
	though those don't go in the image yet. We still need to be 
	able to compile-time resolve the self-sends and initial inline cache results."