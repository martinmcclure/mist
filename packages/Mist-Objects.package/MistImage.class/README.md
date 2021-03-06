A MistImage represents a Mist system to be written as an executable image. It has the overall responsibility for constructing and writing the image, collaborating with an ObjectSpace that holds all of the objects to be written. A Mist executable image consists entirely of Mist objects, since in Mist there is no memory that is not part of some object.

For now, MistImage has API for directly adding methods to the image. Eventually one will add a module to an image, add a class to a module, and add a method to a class, but that level of structure doesn't exist yet.

Instance Variables:
	objectSpace	<ObjectSpace> 	The ObjectSpace with all of the objects
	objectManager <ObjectManager> 	Allocates objects within the object space
	elfInfo			<ElfInfo>			The first object in the memory described by the ObjectSpace
	initializationMethod		<Method>	A small piece of initialization code that is the first code run upon launch. It is responsible for initializing the stack pointer, then calling the startupMethod, then exiting with whatever return code the startupMethod returns. Always the same -- this is not application-dependent.
	startupMethod	<Method>	The initialization method to be run first when the kernel loads the image. It is run by the initializationMethod. This can vary by application.