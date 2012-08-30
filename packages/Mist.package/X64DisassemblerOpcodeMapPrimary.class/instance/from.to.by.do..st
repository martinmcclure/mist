private
from: start to: stop by: step do: actionBlock
	start + 1 to: stop + 1 by: step do: [ :i | 
		| action |
		action := map at: i.
		actionBlock value: action ]