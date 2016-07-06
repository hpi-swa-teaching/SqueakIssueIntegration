as yet unclassified
testIssueList
	| issueTitle issueAssignee issueBody |
	issueTitle := self subject findByName: 'issueTitle'.
	issueAssignee := self subject findByName: 'issueAssignee'.
	issueBody := self subject findByName: 'issueBody'.
	self repoList changeModelSelection: 1.
	self issueList changeModelSelection: 3.
	self assert: 'New Method Issue' equals: issueTitle text string.
	self assert: 'test-user' equals: issueAssignee text string.
	self assert: 'test body method' equals: issueBody text string