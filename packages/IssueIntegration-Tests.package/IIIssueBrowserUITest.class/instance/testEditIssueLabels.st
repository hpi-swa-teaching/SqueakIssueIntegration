running
testEditIssueLabels
	self repoList changeModelSelection: 1.
	self issueList changeModelSelection: 1.
	self labelList listSelectionAt: 1 put: true.
	self assert: (self labelList itemSelectedAmongMultiple: 1)