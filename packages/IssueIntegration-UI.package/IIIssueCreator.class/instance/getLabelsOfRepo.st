initialize-release
getLabelsOfRepo
	self labels ifNil: [ self packageName 
		ifNil: [ self labels: OrderedCollection new ]
		ifNotNil: [ self labels: (IIIssueManagement getLabelsForPackage: self packageName) ]].
	 ^ self labels