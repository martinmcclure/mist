private
compile
	"Compile any module dependencies into the image, if not already present, and resolve imports from them."
	self resolveImports.
	self checkForConflicts.
	"Compile each class definition in the spec"
	self compileClasses.