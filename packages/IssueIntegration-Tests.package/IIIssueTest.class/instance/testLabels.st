running
testLabels
	| issue labels |
	labels := OrderedCollection with: 'important'.
	issue := IIIssue new
		labels: labels;
		yourself.
	self assert: labels equals: issue labels