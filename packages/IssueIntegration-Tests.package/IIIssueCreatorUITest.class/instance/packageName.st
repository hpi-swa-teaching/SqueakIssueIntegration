initialize-release
packageName
	| packageName |
	packageName := 'aPackage'.
	self subject model packageName: packageName.
	self assert: packageName equals: self subject model packageName