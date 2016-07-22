as yet unclassified
testUrlGeneration
	| path url |
	path := '/repos/hey-there'.
	url := self apiClient generateUrlFromPath: path.
	self assert: 'http://localhost:8080', path equals: url