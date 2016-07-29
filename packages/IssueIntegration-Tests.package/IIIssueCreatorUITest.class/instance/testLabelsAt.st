running
testLabelsAt
	| labelList |
	labelList := self subject findByName: 'labelList'.
	labelList listSelectionAt: 1 put: true.
	self assert: true equals: (self subject model labelsAt: 1)

	
	