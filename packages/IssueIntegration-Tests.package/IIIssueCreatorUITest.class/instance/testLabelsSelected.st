running
testLabelsSelected
	| selectedLabels |
	selectedLabels := OrderedCollection 
		with: 'Label1';
		with: 'Label2';
		yourself.
	self subject model labelsSelected: selectedLabels.
	self assert: selectedLabels equals: self subject model labelsSelected