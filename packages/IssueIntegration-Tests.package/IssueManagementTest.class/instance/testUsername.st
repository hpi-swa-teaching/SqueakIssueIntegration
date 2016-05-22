instance variables
testUsername

	| username |

	username := 'RANDOM_STRING_GF342fFDAS'.
	self issueManagement projectID: username.
	self assert: self issueManagement projectID equals: username
	