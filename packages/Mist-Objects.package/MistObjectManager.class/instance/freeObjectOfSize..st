public
freeObjectOfSize: physicalSize
	"physicalSize must be a power of two between 64 and 8192. Answer an instance of FreeObject of that size."

	| freeObject |
	freeObject := freeObjectsBySize at: physicalSize.
	freeObject isNil
		ifFalse: [ freeObjectsBySize at: physicalSize put: freeObject nextFreeObject ]
		ifTrue: [ 
			physicalSize = 8192
				ifTrue: [ freeObject := objectSpace growBy8K ]
				ifFalse: [ 
					| newFreeObject |
					freeObject := self freeObjectOfSize: physicalSize * 2.
					newFreeObject := freeObject split.
					objectSpace addObject: newFreeObject.
					freeObjectsBySize at: physicalSize put: newFreeObject ] ].
	^ freeObject