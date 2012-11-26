An X64CodeUnresolvedReference is a reference within x86_64 machine code to another address, but the actual address is not known at the time the code is compiled. Later in the compilation, it will be resolved by sending the UnresolvedReference the message #resolveTo: addressInteger.

Instance Variables:
	codeObject	<Object> A Byte stream over the machine code
	referenceOffset	<Integer> Position within codeObject, if set to this position then next byte written will be the first byte of the reference
	referenceAddress	<Integer> The machine address at which the first byte of the reference will reside when executing