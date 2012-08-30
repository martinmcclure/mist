FogX64SysCallNode compiles to a Linux system call.

Instance Variables:
	number	<SmallInteger> The sysCall number, as found in /usr/include/asm/unistd_64.h
		
Class Variables:

	NamesToNumbers <Dictionary> The inverse of NumbersToNames. Used in instance creation.
	NumbersToNames 	<Dictionary> The inverse of NamesToNumbers. Used for printing.