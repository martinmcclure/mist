public
writeToStream: stream
	objects do: [:obj | obj writeToStream: stream]