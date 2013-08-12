support
cleanupExecutable
	FileDirectory default
		deleteFileNamed: testSelector;
		deleteFileNamed: testSelector , '.stdin';
		deleteFileNamed: testSelector , '.stdout';
		deleteFileNamed: testSelector , '.stderr'