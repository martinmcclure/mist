private
numberOfChildren
	"Answer either a non-negative integer, or #variable"

	^ self == FogX64Node
		ifTrue: [ #variable ]
		ifFalse: [ self subclassResponsibility ]