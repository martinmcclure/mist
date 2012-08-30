assigning
assignAll: newAssignments
	"Add all of the given assignments to me. Check for conflicts with my existing assignments."

	newAssignments varsAndLocsDo: [ :var :loc | self assign: var to: loc ]