grammar
string
	^ super string map: [ :open :characters :close | String withAll: characters ]