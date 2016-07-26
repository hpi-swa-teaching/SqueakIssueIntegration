running
testLabels
	| issue labels |
	issue := IIIssue new.
	labels := OrderedCollection new.
	labels add: 'important'.
	issue labels: labels.
	self assert: issue labels equals: labels