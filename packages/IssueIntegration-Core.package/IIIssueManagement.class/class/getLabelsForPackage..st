as yet unclassified
getLabelsForPackage: aPackage
	^ (self getIssueManagementFor: aPackage) getAllLabels
	