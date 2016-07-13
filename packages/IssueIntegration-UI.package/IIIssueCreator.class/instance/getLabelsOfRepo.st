as yet unclassified
getLabelsOfRepo
	self labels ifNil: [ self labels: (IIIssueManagement getLabelsForPackage: packageName) ].
	^ self labels