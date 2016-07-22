as yet unclassified
testUrlGeneration
	| path url |
	path := 'repos/', IIGitHubApiMock repoSlug.
	url := self apiClient generateUrlFromPath: path.
	self assert: 'https://api.github.com/', path equals: url