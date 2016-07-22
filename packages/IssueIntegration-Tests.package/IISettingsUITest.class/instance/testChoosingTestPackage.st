as yet unclassified
testChoosingTestPackage
	self packageList changeModelSelection: (self packageList getList indexOf: 'IssueIntegration-Tests').
	self assert: 'test-user/test-repo' equals: (self subject findByName: 'projectIdInput') text string.
.	self assert: 'test-user' equals: (self subject findByName: 'usernameInput') text string.
	self assert: 'i-am-not-a-key' equals: (self subject findByName: 'loginKeyInput') text string