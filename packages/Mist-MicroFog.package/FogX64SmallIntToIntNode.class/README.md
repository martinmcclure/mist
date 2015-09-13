A FogX64SmallIntToIntNode has one child, whose result must be a SmallInteger. I then convert that SmallInteger to an int64, which is my result. No check is made to ensure that the child's result is *really* a SmallInteger.

