private
write
	self
		writeElfHeader;
		writeProgramHeaderTable;
		writeSegments