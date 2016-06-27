as yet unclassified
testRepoList
	| repoList issueList |
	repoList := self subject findByName: 'repoList'.
	issueList := self subject findByName: 'issueList'.
	self assert: (repoList getList includes: GitHubApiServer repoSlug).
	self assert: 0 equals: repoList getCurrentSelectionIndex. 
	self assert: issueList getList isEmpty.
	repoList changeModelSelection: 1.
	self assert: 1 equals: repoList getCurrentSelectionIndex. 
	self assert: 3 equals: issueList getList size.