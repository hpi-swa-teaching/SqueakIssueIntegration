initialize-release
testLabelsAt
	| labelList |
	labelList := self subject findByName: 'labels'.
	labelList listSelectionAt: 1 put: true.
	self assert: (self subject model labelsAt: 1) equals: true.

	
	