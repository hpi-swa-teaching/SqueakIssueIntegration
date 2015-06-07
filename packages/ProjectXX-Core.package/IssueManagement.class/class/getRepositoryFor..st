as yet unclassified
getRepositoryFor: aPackageString

	^ self repositoryDictionary at: aPackageString ifAbsent: ''.