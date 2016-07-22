instance variables
testLabelsAsString
	| issue labels number |
	labels := OrderedCollection with: 'Label1' with: 'Label2'.
	number := 5.
	issue := IIIssue new.
	issue 
		labels: labels;
		number: number.
		
	self assert: 'Label1, Label2' equals: issue labelsAsString