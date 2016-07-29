running
testLabelsAsString
	| issue labels number |
	labels := OrderedCollection with: 'Label1' with: 'Label2'.
	number := 5.
	issue := IIIssue new
		labels: labels;
		number: number;
		yourself.
		
	self assert: 'Label1, Label2' equals: issue labelsAsString