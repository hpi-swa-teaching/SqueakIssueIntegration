as yet unclassified
getLabelsOfRepo
	^ self selectedRepo 
		ifNotNil: [ labels := (IIIssueManagement getLabelsForPackage: (self repoPackageDictionary at: self selectedRepo )).
			labels ]
		ifNil: [ OrderedDictionary new ]