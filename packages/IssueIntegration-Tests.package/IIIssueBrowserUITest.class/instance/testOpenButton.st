running
testOpenButton
	| openButton issueView |
	openButton := self subject findByName: 'singleIssueViewButton'.
	self assert: false equals: openButton enabled.
	self repoList changeModelSelection: 1.
	self issueList changeModelSelection: 1.
	issueView := self should: [ openButton click ] createMorphWithModel: IIIssueBrowser.
	