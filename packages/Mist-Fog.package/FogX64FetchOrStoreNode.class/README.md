FogX64FetchOrStoreNode is the superclass of various node classess that fetch or store from memory at an address offset computed by child nodes.

Children:
	1: Base address (bytes)
	2: Offset from base (64-bit words or bytes, depending on subclass)
	3: (store subclasses only) Value to be stored
	
Result value presented to parent:
	Fetch nodes present the byte (0-extended) or 64-bit word fetched.
	Store nodes present their third child's result; the value stored.