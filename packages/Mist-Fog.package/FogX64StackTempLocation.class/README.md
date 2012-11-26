FogX64StackTempLocation is a location for a 64-bit temporary variable in a stack frame. It knows its bye offset from the base pointer rbp. This will always be negative. Small-magnitude offsets could use a mode with an 8-bit offset rather than a 32-bit offset, but for simplicity we always use a 32-bit offset.

Instance Variables:
	offset	<SmallInteger> The offset in bytes from rbp to the first byte of the temp location. The first temp will be at -8, the second at -16, the third at -24, and so on.