running
testGetLabelsOfRepo
	| labels |
	labels := OrderedCollection with: 'Label1' with: 'Label2'.
	self assert: labels equals: self subject model labelList
	
	
	