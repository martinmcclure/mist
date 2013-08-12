A MistObjectManager is responsible for allocating Mist objects. It keeps the heads of linked lists of free objects, one for each possible physical size (powers of 2 from 64 to 8192 bytes). A running Mist system has a singleton live ObjectManager. This Pharo one is very similar, but is for generating an external Mist image, and so is instantiated once for every image created.

Instance Variables:
	freeObjectsBySize	<Dictionary> Associates physical size with the first free object of that size, or nil if no free objects of that size currently exist.
	objectSpace 		<MistObjectSpace> The object space in which I allocate objects