caching
testCacheValidating
	
	self issueManagement cacheIssues: Set new.
	self assert: self issueManagement isCacheVaild.
	
	self issueManagement invalidateCache.
	self assert: self issueManagement isCacheVaild not