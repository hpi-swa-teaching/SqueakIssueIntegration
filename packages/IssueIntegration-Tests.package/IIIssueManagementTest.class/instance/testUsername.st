running
testUsername
	| username |
	username := 'cmfcmf'.
	self issueManagement username: username.
	self assert: username equals: self issueManagement username
	