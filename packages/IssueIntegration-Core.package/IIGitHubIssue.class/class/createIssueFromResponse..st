instance creation
createIssueFromResponse: aWebResponse
	^ self createIssueFromJSON: (Json readFrom: aWebResponse content readStream)