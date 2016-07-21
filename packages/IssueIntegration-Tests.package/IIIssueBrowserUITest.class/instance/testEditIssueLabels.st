running
testEditIssueLabels
	| labelList |
	self repoList changeModelSelection: 1.
	self issueList changeModelSelection: 1.
	labelList := self subject findByName: 'issueLabels'.
	labelList changeModelSelection: 1.
	labelList listSelectionAt: 1 put: true.
	self assert: (labelList itemSelectedAmongMultiple: 1)