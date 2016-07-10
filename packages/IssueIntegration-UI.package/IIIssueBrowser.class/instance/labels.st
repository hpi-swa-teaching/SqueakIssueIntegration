user interface signals
labels
	selectedIssue labelsAsString  
		ifNil: [ ^ labels
			ifNil: ['']
			ifNotNil: [labels]]
		ifNotNil: [ ^ selectedIssue labelsAsString ]