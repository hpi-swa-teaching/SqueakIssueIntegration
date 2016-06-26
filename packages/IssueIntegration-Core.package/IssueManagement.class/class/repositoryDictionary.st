accessing
repositoryDictionary
	TestMode 
		ifTrue: [^ TestRepositoryDictionary] 
		ifFalse: [RepositoryDictionary  ifNil: [RepositoryDictionary := Dictionary new].
			^ RepositoryDictionary]