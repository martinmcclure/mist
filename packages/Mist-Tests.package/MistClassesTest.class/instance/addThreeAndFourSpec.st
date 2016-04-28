support
addThreeAndFourSpec
	| spec |
	spec := MistMethodSpec new.
	spec
		selector: 'addThreeAndFour';
		source:
				'
	addThreeAndFour
	^ 3 + 4
'.
	^ spec