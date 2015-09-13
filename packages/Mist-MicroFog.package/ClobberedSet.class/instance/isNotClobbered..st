queries
isNotClobbered: loc
	"Declared variable locations are typically not yet assigned at the time this question is asked, but are considered not clobbered since they wll become assigned avoiding clobbered.."

	^ (self includes: loc) not 