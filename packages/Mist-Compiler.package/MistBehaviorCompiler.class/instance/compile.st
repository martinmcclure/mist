private
compile
	"Omitted: A bunch of class composition stuff that needs to happen before the methods are compiled.
	Only one class at this point..."

	"Also omitted: Creating the behavior itself. Right now there are only methods on SmallInteger, which does not quite need to exist."

	spec methodsDo: [ :methodSpec | methodSpec compileIn: image ]