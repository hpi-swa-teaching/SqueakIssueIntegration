running
testLoadLabels
	| serverLabels createdLabels |
	createdLabels := OrderedCollection new.
	createdLabels add: 'Label1'.
	createdLabels add: 'Label2'.
	serverLabels := self issueManagement loadLabels.
	self assert: serverLabels equals: createdLabels.
	