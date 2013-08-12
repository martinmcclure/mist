instance creation
newInImage: image
	| inst freeObj |
	inst := self new.
	^ self registerInstance: inst withImage: image