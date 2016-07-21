user interface signals
labelsAt: anIndex
	^ self selectedIssue labels includes: (self labelList at: anIndex ifAbsent: [ ^ false ])