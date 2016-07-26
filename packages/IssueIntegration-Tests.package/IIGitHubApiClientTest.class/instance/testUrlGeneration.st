running
testUrlGeneration
	| path url |
	path := '/repos/', IIGitHubApiMockServer repoSlug.
	url := self apiClient generateUrlFromPath: path.
	self assert: 'https://api.github.com', path equals: url