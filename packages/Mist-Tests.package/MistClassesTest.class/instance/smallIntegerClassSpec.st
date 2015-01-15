support
smallIntegerClassSpec
	| classSpec |
	classSpec := MistClassSpec new.
	classSpec
		name: 'SmallInteger';
		addInstanceMethod: self smallIntegerPlusSpec;
		addInstanceMethod: self addThreeAndFourSpec.
	^ classSpec