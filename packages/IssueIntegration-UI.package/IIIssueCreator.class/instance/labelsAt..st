as yet unclassified
labelsAt: anIndex
	^ self labelsSelected includes: (self labels at: anIndex ifAbsent: [^ false])
	