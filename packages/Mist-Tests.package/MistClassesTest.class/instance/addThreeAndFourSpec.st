support
addThreeAndFourSpec
	| spec |
	spec := MistMethodSpec new.
	spec
		source:
			'
	addThreeAndFour
	^ 3 + 4
'