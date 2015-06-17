as yet unclassified
getRepositoryFor: aPackageString

	^ RepositoryDictionary at: aPackageString ifAbsent: ''.