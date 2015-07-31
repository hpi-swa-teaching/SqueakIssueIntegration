caching
testCaching

	| issueManagement |
	
	issueManagement := IssueManagement new.
	issueManagement cacheIssues: Set new.
	self assert: issueManagement isCacheVaild.
	
	issueManagement invalidateCache.
	self assert: issueManagement isCacheVaild not.