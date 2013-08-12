MistObject -- an object to be written to a Mist executable image.

Instance Variables:
	address	<Integer> The memory address of the object once it's loaded into a running Mist system.
 	sizeInBytes	<Integer> The increment to the address of the next object in the object space. Always a power of 2 between 64 and 8192. Theoretically can also be a multiple of 4096 greater than 8192, but since those large objects each live in their own object space they are not supported yet.