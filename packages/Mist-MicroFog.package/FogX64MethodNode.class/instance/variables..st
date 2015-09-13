private
variables: names
	"We need to remember the order of the arguments to know their original register location,
	but vDict is unordered. So we also keep the variables in order."

	super variables: names.
	registerArguments := OrderedCollection new: names size.
	names do: [ :name | registerArguments add: (vDict at: name) ]