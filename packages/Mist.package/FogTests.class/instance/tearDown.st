running
tearDown

	(FileDirectory default fileNamesMatching: '*.stdin;*.stdout;*.stderr') do: [:fn |
		FileDirectory default deleteFileNamed: fn].