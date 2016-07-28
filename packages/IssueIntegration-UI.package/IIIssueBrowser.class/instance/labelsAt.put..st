user interface signals
labelsAt: anInteger put: aBoolean
	| label |
	label := self labelList at: anInteger ifAbsent: [ ^ self ].
	self selectedIssue labels: (aBoolean 
		ifTrue: [ self selectedIssue labels copyWith: label ] 
		ifFalse: [ self selectedIssue labels copyWithout: label ]).
	self updateLabels: self selectedIssue labels