running
testLoginKey
	| loginKey |
	loginKey := 'RANDOM_STRING_gh%§$WQRZ'.
	self issueManagement loginKey: loginKey.
	self assert: loginKey equals: self issueManagement loginKey 
	