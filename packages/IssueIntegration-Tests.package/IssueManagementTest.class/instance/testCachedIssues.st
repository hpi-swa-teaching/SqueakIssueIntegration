instance variables
testCachedIssues

	| issues |

	issues := Set new.
	issues add: Issue new.
	self issueManagement cachedIssues: issues.
	self assert: self issueManagement cachedIssues equals: issues
	