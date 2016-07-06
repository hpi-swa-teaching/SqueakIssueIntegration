as yet unclassified
testFixMeButton
	| fixMeButton |
	fixMeButton := self subject findByName: 'fixMeButton'.
	self should: [fixMeButton click] raise: Error.
	self repoList changeModelSelection: 1.
	self issueList changeModelSelection: 1.
	self should: [fixMeButton click] raise: Error.
	self issueList changeModelSelection: 2.
	self should: [fixMeButton click] createMorphWithModel: Browser.