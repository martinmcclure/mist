x64-compiling-pass1
acceptableGenerationLocations
	"Because I clobber my output's generationLocation before consuming my inputs (to clear the upper bytes), 
	I must avoid my children's consumptionLocations.
	Because locations are assigned bottom-up, my childrens' consumption locations will already be assigned 
	when it's time to assign my parent's locations."

	| prefs toAvoid |
	prefs := self class outputLocationPreferences copy.
	toAvoid := children collect: [ :child | child consumptionLocation ].
	prefs unacceptableLocations: toAvoid.
	^ prefs