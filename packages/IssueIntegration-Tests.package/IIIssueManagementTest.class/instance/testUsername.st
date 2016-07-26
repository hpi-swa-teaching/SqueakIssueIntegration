running
testUsername
	| username |
	username := 'cmfcmf'.
	self issueManagement username: username.
	self assert: self issueManagement username equals: username
	