user interface signals
labelsAt: anInteger put: aBoolean
	self selectedIssue labels: (self selectedIssue labels
		perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
		with: (self labelList at: anInteger ifAbsent: [ ^ self ])).
	self updateLabels: self selectedIssue labels