A MistMethodSpec specifies a Mist method. It may not be possible to actually construct a method from the specification; for example the source code may not have valid syntax.

Instance Variables
	behaviorSpec:	<MistBehaviorSpec>
	isPrivate:		<Boolean>
	source:		<String>

behaviorSpec
	- Specifies the behavior for which the method is to be compiled.
	
isPrivate
	- True if the method should be private to its defining class.

source
	- The source code from which the method should be constructed.