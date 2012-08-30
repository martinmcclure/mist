private
numberOfChildren
	^ self == FogX64Node
		ifTrue: [ #variable ]
		ifFalse: [ self subclassResponsibility ]