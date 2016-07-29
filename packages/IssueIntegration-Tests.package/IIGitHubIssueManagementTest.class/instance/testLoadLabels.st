running
testLoadLabels
	| serverLabels createdLabels |
	createdLabels := OrderedCollection with: 'Label1' with: 'Label2'.
	serverLabels := self issueManagement loadLabels.
	self assert: createdLabels equals: serverLabels