private
registerInstance: inst withImage: image
	| freeObj |
	freeObj := image freeObjectOfSize: inst physicalSize.
	inst physicalAddress: freeObj physicalAddress.
	freeObj become: inst.	"freeObj is now the real instance, return it."
	^ freeObj