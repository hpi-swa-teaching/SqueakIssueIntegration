running
testEditAssignee
	| newAssignee assigneeInput |
	newAssignee := 'Test'.
	assigneeInput := self subject findByName: 'assingeeInput'.
	assigneeInput setText: newAssignee.
	assigneeInput acceptTextInModel.
	self assert: newAssignee equals: assigneeInput text string
	
	
	