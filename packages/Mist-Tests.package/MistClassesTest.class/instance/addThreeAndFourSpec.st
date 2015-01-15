support
addThreeAndFourSpec
	| spec |
	spec := MistMethodSpec new.
	spec
		name: #addThreeAndFour;
		source:
				'
	addThreeAndFour
	^ 3 + 4
'.
	^ spec