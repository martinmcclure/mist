support
smallIntegerPlusSpec
	| spec |
	spec := MistMethodSpec new.
	spec
		source:
			'
	+
	<primitive>
' , (self class sourceCodeAt: #smallIntegerPlusFog)