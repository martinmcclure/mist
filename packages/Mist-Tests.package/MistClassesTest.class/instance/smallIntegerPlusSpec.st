support
smallIntegerPlusSpec
	| spec |
	spec := MistMethodSpec new.
	spec
		name: #+;
		source:
				'
	+ aNumber
	<primitive>
' , self smallIntegerPlusFogSource.
	^ spec