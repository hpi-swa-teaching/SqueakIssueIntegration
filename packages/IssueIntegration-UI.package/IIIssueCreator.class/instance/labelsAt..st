user interface signals
labelsAt: anIndex
	^ self labelsSelected includes: (self labelList at: anIndex ifAbsent: [ ^ false ])