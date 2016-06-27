as yet unclassified
testFixMeButton
	| repoList issueList fixMeButton |
	repoList := self subject findByName: 'repoList'.
	issueList := self subject findByName: 'issueList'.
	fixMeButton := self subject findByName: 'fixMeButton'.
	self should: [fixMeButton click] raise: Error.
	repoList changeModelSelection: 1.
	issueList changeModelSelection: 1.
	self should: [fixMeButton click] raise: Error.
	issueList changeModelSelection: 2.
	self should: [fixMeButton click] createMorphWithModel: Browser.