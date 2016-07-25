running
testFixMeButton
	| fixMeButton |
	fixMeButton := self subject findByName: 'fixMeButton'.
	self assert: false equals: fixMeButton enabled.
	self repoList changeModelSelection: 1.
	self issueList changeModelSelection: 3.
	self should: [ fixMeButton click ] raise: Error.
	self issueList changeModelSelection: 2.
	self should: [ fixMeButton click ] createMorphWithModel: Browser