private
variables: names
	vDict := Dictionary new.
	names do: [ :name | vDict at: name put: (FogX64DeclaredVariable named: name) ]