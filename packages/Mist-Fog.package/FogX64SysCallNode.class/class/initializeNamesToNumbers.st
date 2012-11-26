initialize-release
initializeNamesToNumbers
	"From info in /usr/include/asm/unistd_64.h"

	NamesToNumbers
		at: #read put: 0;
		at: #write put: 1;
		at: #open put: 2;
		at: #close put: 3;
		at: #mmap2 put: 9;
		at: #ioctl put: 16;
		at: #exit_group put: 231