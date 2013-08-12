MistFreeObject -- an object that is free that can be allocated as an instance of some other class than FreeObject. Free objects are organized by the MistObjectManager, who sorts them into singly-linked lists. Each list contains free objects that are all the same size.

Instance Variables:
	nextFreeObject	<MistFreeObject or nil> The next-most-recently GCed free object with the same physical size as myself.