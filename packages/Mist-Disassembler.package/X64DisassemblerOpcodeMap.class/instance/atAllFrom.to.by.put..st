private
atAllFrom: begin to: end by: step put: action
	| start stop |
	start := begin + 1.
	stop := end + 1.
	start to: stop by: step do: [ :i | map at: i put: action copy ]