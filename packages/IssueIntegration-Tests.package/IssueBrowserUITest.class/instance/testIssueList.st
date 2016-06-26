as yet unclassified
testIssueList
	| repoList issueList issueTitle issueAssignee issueBody |
	repoList := self subject findByName: 'repoList'.
	issueList := self subject findByName: 'issueList'.
	issueTitle := self subject findByName: 'issueTitle'.
	issueAssignee := self subject findByName: 'issueAssignee'.
	issueBody := self subject findByName: 'issueBody'.
	repoList changeModelSelection: 1.
	issueList changeModelSelection: 1.
	self assert: 'New Method Issue' equals: issueTitle text string.
	self assert: 'test-user' equals: issueAssignee text string.
	self assert: 'test body method' equals: issueBody text string.