running
testLoadLabels
	| serverLabels createdLabels |
	createdLabels := OrderedCollection new.
	createdLabels add: 'Label1'.
	createdLabels add: 'Label2'.
	createdLabels add: 'Label3'.
	createdLabels add: 'Label4'.
	createdLabels add: 'Label5'.
	createdLabels add: 'Label6'.
	serverLabels := self issueManagement loadLabels.
	self assert: serverLabels equals: createdLabels.
	