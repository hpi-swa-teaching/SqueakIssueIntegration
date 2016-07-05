as yet unclassified
testEditIssueAssignee
	| assigneeInput newAssignee |
	newAssignee := 'test-user-new'.
	self repoList changeModelSelection: 1.
	self issueList changeModelSelection: 3.
	assigneeInput := self subject findByName: 'issueAssignee'.
	assigneeInput setText: newAssignee.
	self assert: newAssignee equals: assigneeInput text string.
	self issueList changeModelSelection: 2.
	self issueList changeModelSelection: 1.
	self assert: newAssignee equals: assigneeInput text string