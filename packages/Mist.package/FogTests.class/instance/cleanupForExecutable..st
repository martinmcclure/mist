support
cleanupForExecutable: filename
	FileDirectory default
		deleteFileNamed: filename;
		deleteFileNamed: filename , '.stdin';
		deleteFileNamed: filename , '.stdout';
		deleteFileNamed: filename , '.stdErr'