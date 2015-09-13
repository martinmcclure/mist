x64-compiling-pass1
pass1PostOrderSiblingClobbered: mySiblingClobbered childClobbered: childClobbered
	"Since I jump straight to the loop tail label in defiance of the normal tree traversal order, 
	I must avoid my loop's siblingClobbered. My own siblingClobbered -- well, in most cases there won't be any, since I probably won't have any siblings to my right. Any such siblings would not be executed, since I'm an unconditional jump past them. So just test for any odd cases and then ignore them."

	| siblingClobbered |
	mySiblingClobbered isEmpty
		ifFalse: [ self error: 'Found unreachable variables in use.' ].
	siblingClobbered := loopNode siblingClobbered.
	siblingClobbered addAll: (parent assignLocationsAvoiding: siblingClobbered compiler: compiler).
	siblingClobbered addAll: childClobbered