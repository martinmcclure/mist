support
cleanupExecutable
	FileDirectory default
		deleteFileNamed: filename;
		deleteFileNamed: filename , '.stdin';
		deleteFileNamed: filename , '.stdout';
		deleteFileNamed: filename , '.stderr'