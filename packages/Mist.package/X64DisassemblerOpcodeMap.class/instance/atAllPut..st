public
atAllPut: action
	"Note that the identical action is placed at each location -- don't expect this to work if later specializing the actions."

	1 to: map size do: [ :i | map at: i put: action ]