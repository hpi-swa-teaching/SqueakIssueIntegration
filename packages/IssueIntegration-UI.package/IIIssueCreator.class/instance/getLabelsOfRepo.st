as yet unclassified
getLabelsOfRepo
	^ self labels ifNil: [ self labels: (IIIssueManagement getLabelsForPackage: self packageName) ]