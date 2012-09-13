running
compileAndRun: program stdin: stdin
	| filename |
	filename := thisContext sender selector asString.
	^ self compile: program andRun: filename stdin: stdin