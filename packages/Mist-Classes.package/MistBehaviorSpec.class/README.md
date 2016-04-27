A MistBehaviorSpec describes a Mist class or metaclass.

Instance Variables
	classSpec:		<MistClassSpec>
	composition:		<MistBehaviorComposition>
	instvars:		<Collection of Symbol>
	methods:		<Collection of MistMethodSpec>
			
classSpec
	- Specifies the class for which I am the instance-side or class-side behavior.

composition
	- Specifies any components that are composed into this behavior.

instvars
	- Names of the instance variables defined by this behavior

methods
	- Specifies the methods defined by this behavior.