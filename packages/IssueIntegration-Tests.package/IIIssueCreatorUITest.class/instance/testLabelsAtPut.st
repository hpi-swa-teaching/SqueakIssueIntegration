initialize-release
testLabelsAtPut
	| labelList |
	labelList := self subject findByName: 'labels'.
	self subject model labelsAt: 1 put: true.
	self assert: true equals: (labelList listSelectionAt: 1)

	
	