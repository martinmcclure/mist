program header table
writeProgramHeaderTable 
	"Currently only handles a single segment"
	self write4: 1; "Loadable segment"
	write4: 7;  "rwx permissions"
	write8: 0; "offset of segment from start of file"
	write8: elfInfo loadAddress; "where to load the segment in virtual memory"
	write8: 0; "unused physical address"
	write8: elfInfo segmentSizeInFile; "size of segment in file"
	write8: elfInfo segmentSize; "size of segment in memory -- how much memory to allocate"
	write8: 8. "64-bit alignment"
	