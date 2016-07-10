as yet unclassified
labelsAt: anIndex
	^ labelsSelected includes: (labels at: anIndex ifAbsent: [^ false])
	