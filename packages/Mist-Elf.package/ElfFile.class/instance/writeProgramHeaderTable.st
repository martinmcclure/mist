program header table
writeProgramHeaderTable 
	"Currently only handles a single segment"
	self write4: 1; "Loadable segment"
	write4: 7;  "rwx permissions"
	write8: 0; "offset of segment from start of file"
	write8: entryAddress - 64 - 56; "where to load the segment in virtual memory -- the code start address less the size of the headers"
	write8: 0; "unused physical address"
	write8: segments first size + 64 + 56; "size of segment in file"
	write8: 16r100000; "1MiB" "segments first size + 64 + 56;" "size of segment in memory"
	write8: 8. "64-bit alignment"
	