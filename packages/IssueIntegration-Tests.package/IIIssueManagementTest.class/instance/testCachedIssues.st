instance variables
testCachedIssues
	| issues |
	issues := SortedCollection new.
	issues add: IIIssue new.
	
	self issueManagement cachedIssues: issues.
	self assert: self issueManagement cachedIssues equals: issues
	