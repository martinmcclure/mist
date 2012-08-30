public
atAllPut: action
	1 to: map size do: [ :i | map at: i put: action ]