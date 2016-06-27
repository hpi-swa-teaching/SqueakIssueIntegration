as yet unclassified
testIssueWidgets
	| repoList issueList issueTitle |
	repoList := self subject findByName: 'repoList'.
	issueList := self subject findByName: 'issueList'.
	issueTitle := self subject findByName: 'issueTitle'.
	self assert: issueTitle text isEmpty.
	repoList changeModelSelection: 1.
	self assert: 3 equals: issueList getList size.

	issueList changeModelSelection: 1.
	self assert: 'New Method Issue' equals: issueTitle text string.
	issueList changeModelSelection: 3.
	self assert: 'Test From Test' equals: issueTitle text string.	