instance variables
testProjectURL

	| projectURL |

	projectURL := 'http://www.RANDOM_STRING_GFSDGgfsdgFS3trw.com/'.
	self issueManagement projectURL: projectURL.
	self assert: self issueManagement projectURL equals: projectURL
	