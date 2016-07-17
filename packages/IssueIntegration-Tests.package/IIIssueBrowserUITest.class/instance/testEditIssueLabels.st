as yet unclassified
testEditIssueLabels
	| labelInput |
	self repoList changeModelSelection: 1.
	self issueList changeModelSelection: 3.
	labelInput := self subject findByName: 'issueLabels'.
	labelInput listSelectionAt: 1 put: true.
	self assert: (labelInput listSelectionAt: 1) equals: true.
	self issueList changeModelSelection: 2.
	self issueList changeModelSelection: 3.
	self assert: true equals: (labelInput listSelectionAt: 1)