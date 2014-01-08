support
smallIntegerClassSpec
	| classSpec |
	classSpec := MistClassSpec new.
	classSpec
		name: 'SmallInteger';
		addMethod: self smallIntegerPlusSpec;
		addMethod: self addThreeAndFourSpec