FogX64StackTempLocation is a location for a 64-bit temporary variable in a stack frame. It knows its byte offset from the stack pointer rsp. This will always be non-negative. 

Instance Variables:
	offset	<SmallInteger> The offset in bytes from rsp to the first byte of the temp location. The first temp will be at 0, the second at 8, the third at 16, and so on.