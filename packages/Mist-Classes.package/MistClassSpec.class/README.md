A MistClassSpec describes a Mist class -- both the class and its associated metaclass.

Instance Variables
	classSpec:		<MistBehaviorSpec>
	isPrivate:		<Boolean>
	metaclassSpec:		<MistBehaviorSpec>
	moduleSpec: 	<MistModuleSpec>
	name:		<Symbol>

classSpec
	- Specifies the state and behavior of instances of the class.

isPrivate
	- If true, the name of the specified class should be private to the defining module.

metaclassSpec
	- Specifies the state and behavior of the class itself.
	
moduleSpec
	-Specifies the module that the class is to be installed into.

name
	- The name by which the class will be known within its module.
