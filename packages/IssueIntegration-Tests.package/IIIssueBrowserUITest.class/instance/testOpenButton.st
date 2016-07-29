running
testOpenButton
	| openButton |
	openButton := self subject findByName: 'singleIssueViewButton'.
	self assert: false equals: openButton enabled.
	self repoList changeModelSelection: 1.
	self issueList changeModelSelection: 1.
	self should: [ openButton click ] createMorphWithModel: IIIssueBrowser.
	