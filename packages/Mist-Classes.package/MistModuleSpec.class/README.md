A MistModuleSpec is a specification for a Mist module. It is typically the result of parsing a module specification expression. Unlike a MistModule, which must be consistent, a ModuleSpec is allowed to express impossible things, such as name conflicts and unresolveable imports. 

Instance Variables
	definitions:		<Dictionary of name -> MistClassSpec>
	imports:		<OrderedCollection of MistModuleImportSpec>
	name:		<String>

definitions
	- Specs for the classes contained in the module, by name. This does *not* include definitions for the imported modules or the internal name of the module itself.

imports
	- Specs for modules imported into this module. This is undefined for now.

name
	- The name by which code defined in the module's definitions refers to the module. Other modules are likely to use the same name to refer to this module, but are free to use a different name if they need to (for example, because there are two modules written by different parties that have the same internal name).