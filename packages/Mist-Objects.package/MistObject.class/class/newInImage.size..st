instance creation
newInImage: image size: size
	| inst |
	inst := self new: size.
	^ self registerInstance: inst withImage: image