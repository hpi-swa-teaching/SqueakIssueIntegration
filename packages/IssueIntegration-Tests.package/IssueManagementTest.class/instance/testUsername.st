instance variables
testUsername

	| username |

	username := 'RANDOM_STRING_GF342fFDAS'.
	self issueManagement projectURL: username.
	self assert: self issueManagement projectURL equals: username
	