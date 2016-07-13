user interface signals
labelsAt: anIndex
	^ self selectedIssue labels includes: (self labels at: anIndex ifAbsent: [^ false])
	