FogX64IntConstantNode provides a 64-bit literal constant. Note that this is *not* an object, but a native int register value. 

Instance Variables:
	value	<Integer> The literal constant to be compiled. If negative, it will be considered to be signed, otherwise unsigned. Therefore, the valid range is [-2^63 .. 2^64)