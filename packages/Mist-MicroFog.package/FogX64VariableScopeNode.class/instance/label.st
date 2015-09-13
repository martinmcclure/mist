portable-printing
label
	| label |
	label := self simpleLabel.
	vDict keysDo: [ :name | label := label , '''' , name , ''' ' ].
	^ label