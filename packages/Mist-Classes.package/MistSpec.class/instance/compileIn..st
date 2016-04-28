compiling
compileIn: anImage
	compiledForm := self compilerClass new compile: self in: anImage.
	isCompiled := true