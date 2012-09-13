running
compileAndRun: program
	| filename |
	filename := thisContext sender selector asString.
	^ self compile: program andRun: filename stdin: (StandardFileStream forceNewFileNamed: filename, '.stdin')