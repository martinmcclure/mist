initialize-release
initializeLocationPreferences
	| numberOfChildren |
	outputLocationPreferences := FogX64LocationPreferences new.
	numberOfChildren := self numberOfChildren.
	numberOfChildren == #variable
		ifTrue: [ inputsLocationPreferences := {(FogX64LocationPreferences new)} ]
		ifFalse: [ inputsLocationPreferences := (Array new: self numberOfChildren) collect: [ :ignored | FogX64LocationPreferences new ] ]