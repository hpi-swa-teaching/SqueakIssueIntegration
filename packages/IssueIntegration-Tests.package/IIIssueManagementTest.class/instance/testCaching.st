caching
testCaching
	| issues |
	issues := Set new.
	issues
		add: IIIssue new;
		add: IIIssue new.

	self issueManagement cacheIssues: issues.
	self assert: self issueManagement cachedIssues equals: issues