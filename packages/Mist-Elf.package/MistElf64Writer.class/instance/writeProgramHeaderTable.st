program header table
writeProgramHeaderTable 
	"Currently only handles a single segment"
	self write4: 1; "Loadable segment"
	write4: 7;  "rwx permissions"
	writeAddress: 0; "offset of segment from start of file"
	writeAddress: elfInfo loadAddress; "where to load the segment in virtual memory"
	writeAddress: 0; "unused physical address"
	writeAddress: elfInfo segmentSizeInFile; "size of segment in file"
	writeAddress: elfInfo segmentSize; "size of segment in memory -- how much memory to allocate"
	writeAddress: 8. "64-bit alignment"
	