initialize-release
initialize
	super initialize.	"I don't expect to have a parent, so initialize a dummy parent variable for me."
	parent := FogX64ImplicitVariable parent: nil child: self.
	parent beDummy