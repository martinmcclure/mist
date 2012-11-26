portable-printing
label
	| label |
	label := 'Variable Scope: '.
	vDict keysDo: [ :name | label := label , '''' , name , ''' ' ].
	^ label