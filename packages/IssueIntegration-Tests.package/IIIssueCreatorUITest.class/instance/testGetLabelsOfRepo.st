running
testGetLabelsOfRepo
	| labels |
	labels := OrderedCollection new.
	labels 
		add: 'Label1';
		add: 'Label2'.
	self assert: labels equals: self subject model getLabelsOfRepo
	
	
	