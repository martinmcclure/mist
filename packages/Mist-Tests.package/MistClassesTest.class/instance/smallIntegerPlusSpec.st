support
smallIntegerPlusSpec
	| spec |
	spec := MistMethodSpec new.
	spec
		selector: '+';
		source:
				'
	+ aNumber
	<primitive>
' , self smallIntegerPlusFogSource.
	^ spec