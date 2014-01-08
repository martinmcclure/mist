support
threePlusFourModuleSpec
	| moduleSpec |
	moduleSpec := MistModuleSpec new.
	moduleSpec
		name: 'Kernel';
		addClass: self smallIntegerClassSpec.
	^ moduleSpec