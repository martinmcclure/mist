A FogIndentingStream is used to print trees of Fog nodes in a nice indented format.

Instance Variables
	label:		<String> The label to put in parentheses at the beginning of the next line, if non-empty. Is reset to an empty string after one use.
	level:		<Integer> Current indent level
	stream:		<WriteStream> The underlying stream on which I write

