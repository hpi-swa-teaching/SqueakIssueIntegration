initialize-release
testGetLabelsOfRepo
	| labels |
	labels := OrderedCollection new.
	labels add: 'Label1'.
	labels add: 'Label2'.
	self assert: labels equals: self subject model getLabelsOfRepo
	
	
	