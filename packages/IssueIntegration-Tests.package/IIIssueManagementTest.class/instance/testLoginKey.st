instance variables
testLoginKey
	| loginKey |
	loginKey := 'RANDOM_STRING_gh%§$WQRZ'.
	
	self issueManagement loginKey: loginKey.
	self assert: self issueManagement loginKey equals: loginKey
	