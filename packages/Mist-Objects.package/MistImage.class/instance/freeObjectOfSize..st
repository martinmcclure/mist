public
freeObjectOfSize: physicalSize
	"physicalSize must be a power of two between 64 and 8192. Answer an instance of FreeObject of that size."

	^ objectManager freeObjectOfSize: physicalSize