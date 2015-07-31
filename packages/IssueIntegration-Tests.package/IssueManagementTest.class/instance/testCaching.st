caching
testCaching
	
	| issues |

	issues := Set new.
	issues add: Issue new.
	issues add: Issue new.

	self issueManagement cacheIssues: issues.
	self assert: self issueManagement cachedIssues equals: issues