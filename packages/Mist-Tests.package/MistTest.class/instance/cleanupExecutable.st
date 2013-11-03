support
cleanupExecutable
	testSelector asFileReference delete.
	(testSelector , '.stdin') asFileReference delete.
	(testSelector , '.stdout') asFileReference delete.
	(testSelector , '.stderr') asFileReference delete