initialize-release
stop
	IIGitHubApiMockServer allSubInstancesDo: [ :each | each webServer destroy ]