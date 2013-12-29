A MistModule is a Mist module.  Profound, I know. A module is the largest unit of Mist code defined by the language, and consists of some number of classes. A module also defines a namespace of 'module constants', each of which binds a name to some object. Initially, all module constants name classes, that is bind a name to a class, or name a module. 

Each module declares its own name. For code defined within the module, this name is bound to the module itself. Code defined in other modules may have no name binding for this module, or this module may be bound to a name, not necessarily the same name as the module refers to itself by.

Module constant names defined in other modules are not bound in this module unless that module is 'imported' into this module. A module import specifies a name for another module. This may or may not be the same name by which the foreign module knows itself, but it *will* be the name that is bound to the foreign module within the scope of this module. 

By default, importing a module duplicates the bindings for all of its module constants under the same names as in the defining module. However, any module constant may be explicitly excluded, and any module constant not excluded may be explicitly aliased to be bound under a different name.

Module constant names must be uniquely bound within the scope of a module. When importing modules, any name conflicts must be explicitly resolved by exclusion or aliasing.

Instance Variables
	name:		<MistString>
	spec: 		<MistModuleSpec>
	bindings:	<Dictionary>

name
	- The name this module knows itself as.

spec
	- The specification from which this module was built
	
bindings
	- The lookup dictionary for all module constant names visible to code defined in this module.
