private
computeBytes
	"Prerequisite: my instvars must all be set. Initialize my sruct bytes to be a valid ELF header based on those instvars. For now, only a single program segment is allowed, and that's all Mist needs at present."

	| stream writer |
	stream := WriteStream on: theBytes.
	writer := MistElfWriter for: self on: stream.
	writer write