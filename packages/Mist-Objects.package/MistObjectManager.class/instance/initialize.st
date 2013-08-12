initialize-release
initialize
	freeObjectsBySize := Dictionary new.
	freeObjectsBySize
		at: 64 put: nil;
		at: 128 put: nil;
		at: 256 put: nil;
		at: 512 put: nil;
		at: 1024 put: nil;
		at: 2048 put: nil;
		at: 4096 put: nil;
		at: 8192 put: nil