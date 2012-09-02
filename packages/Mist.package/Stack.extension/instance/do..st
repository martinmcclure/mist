*mist-enumerating
do: aBlock

	self linkedList do: [:link | aBlock value: link element].