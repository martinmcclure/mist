private
parse
	"Parse the source into a Fog AST. This Fog will be massaged quite a bit in further compiler passes, this is just the first one."

	| source parser |
	source := spec source.
	parser := MistParser new.
	^ parser parse: source